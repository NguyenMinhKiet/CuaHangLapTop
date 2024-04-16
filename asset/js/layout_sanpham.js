    var products = [];
    var phanloaisp = [];
    function getDsSanPham(){
        // Tạo một yêu cầu AJAX
        var xhr = new XMLHttpRequest();
            
        xhr.open('GET', '../../xuly/admin/getDsSanPham.php', true);

        // Đặt phương thức và URL yêu cầu
        // Xử lý sự kiện khi yêu cầu hoàn thành
        xhr.onload = function() {
            // Kiểm tra mã trạng thái HTTP
            if (xhr.status >= 200 && xhr.status < 300) {
                // Chuyển đổi dữ liệu JSON nhận được thành đối tượng JavaScript
                if(xhr.responseText === '') {
                    products = [];
                } else {
                    // Chuyển đổi dữ liệu JSON nhận được thành đối tượng JavaScript
                    products = JSON.parse(xhr.responseText);

                }
                // Xử lý dữ liệu, ví dụ: log ra console
                showProduct();
            } else {
                console.error('Yêu cầu không thành công. Mã lỗi: ' + xhr.status);
            }
        };

        // Xử lý lỗi khi có lỗi trong quá trình yêu cầu
        xhr.onerror = function() {
            console.error('Có lỗi khi gửi yêu cầu.');
        };

        // Gửi yêu cầu
        xhr.send();
    }
    getDsSanPham();

    function getDsPhanLoaiSP(){
        // Tạo một đối tượng XMLHttpRequest
        var xhr = new XMLHttpRequest();

        // Khai báo hàm xử lý sự kiện khi nhận phản hồi từ máy chủ
        xhr.onload = function() {
            // Kiểm tra nếu mã trạng thái là 200, tức là yêu cầu thành công
            if (xhr.status === 200) {
                // Parse dữ liệu JSON nhận được từ máy chủ
                phanloaisp = JSON.parse(xhr.responseText);
                
                // Xử lý dữ liệu nhận được ở đây
            } else {
                // Xử lý khi có lỗi xảy ra trong quá trình gửi yêu cầu
                console.error('Có lỗi xảy ra. Mã lỗi: ' + xhr.status);
            }
        };

        // Khai báo hàm xử lý sự kiện khi gặp lỗi trong quá trình gửi yêu cầu
        xhr.onerror = function() {
            console.error('Có lỗi xảy ra khi gửi yêu cầu.');
        };

        // Mở một kết nối tới file getDsPhanLoaiSP.php với phương thức GET
        xhr.open('GET', '../../xuly/admin/getDsPhanLoaiSP.php', true);

        // Gửi yêu cầu đến máy chủ
        xhr.send();
    }
    getDsPhanLoaiSP();


    // Phân trang

    // Công thức tính

    // item: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

    // 1: 0, 1, 2, 3, 4
    // 2: 5, 6, 7, 8, 9
    // 3: 10

    // itemPerPage: 5, currentPage = 1

    // start = 0, end = itemPerPage

    // start = (currentPage - 1) * itemPerPage

    // end = currentPage * itemPerPage

    // 1: currentPage = 1; start = (1-1)*5 = 0; end = 1*5 = 5, start=0, end=5
    // 2: currentPage = 2; start = (2-1)*5 = 5; end = 2*5 = 10, start=5, end=10
    // 3: currentPage = 3: start = (3-1)*5 = 10; end = 3*5 = 15, start=10, end=15
    let currentPage = 1;
    let itemPerPage = 5;

    function displayList(productAll, itemPerPage, currentPage){
        let start = (currentPage - 1) * itemPerPage;
        let end = currentPage * itemPerPage;
        let productShow = productAll.slice(start,end);
        showArrayProduct(productShow);
    }

    function setupPagination(productAll,itemPerPage){
        if(productAll.length > 0){
            document.querySelector('.page-nav-list').innerHTML = '';
            let page_count = Math.ceil(productAll.length / itemPerPage);
            for(let i=1; i <= page_count; i++){
                let li = paginationChange(i,productAll,currentPage);
                document.querySelector('.page-nav-list').appendChild(li);
            }
        }
    }

    function paginationChange(page,productAll,currentPage){
        let node = document.createElement('li');
        node.classList.add("page-nav-item");
        node.innerHTML = `<a href="#">${page}</a>`;
        if(currentPage == page) node.classList.add('active');
        node.addEventListener('click', function(){
            currentPage = page;
            document.querySelector('.content-main-list').scrollTop = 0;
            displayList(productAll,itemPerPage,currentPage);
            let t = document.querySelectorAll('.page-nav-item.active');
            for(let i = 0 ; i < t.length ; i++){
                t[i].classList.remove('active');
            }
            node.classList.add('active');
        })
        return node;
    }

    // Hiển thị danh sách sản phẩm
    function showArrayProduct(arr) {
    let productHtml = "";
    if (arr.length === 0) {
        if (!document.getElementById("content-main-list").classList.contains("empty")) {
            document.getElementById("content-main-list").classList.add("empty");
            productHtml = `<p>Không có dữ liệu để hiển thị !!!</p>`;
            document.querySelector(".content-main-list.empty").innerHTML = productHtml;
        }
    } else {
        productHtml = "";
        if (document.querySelector(".content-main-list.empty")) {
            document.querySelector(".content-main-list.empty").classList.remove("empty");
            document.getElementById("content-main-list").innerHTML =
            `<div class="item-list">
            <div id="show-product"></div>
            <div class="page-nav">
                <ul class="page-nav-list"></ul>
            </div>
        </div>`
        }
        
        arr.forEach(product => {
            let btnCtl = product.TRANGTHAI == 1 ?
                `<button class="control-btn changeStatus-product-control" onclick="changeStatusProductOff(${product.MASP})"><i class="fa-solid fa-trash"></i></button>` :
                `<button class="control-btn changeStatus-product-control undo-btn" onclick="changeStatusProductOn(${product.MASP})"><i class="fa-solid fa-trash"></i></button>`;
            productHtml +=
                `<div class="item-single">
                    <div class="item-left">
                        <img src="../../../asset/image/${product.HINHSP}" alt="hình sản phẩm">
                    </div>
                    <div class="item-center">
                        <h2>${product.TENSP}</h2>
                        <p>${product.MOTA}</p>
                        <span>${product.TENTHUONGHIEU}</span>
                    </div>
                    <div class="item-right">
                        <h3>${product.GIATIEN} đ</h3>
                        <div class="item-btn">
                            <button class="item-btn-edit control-btn" onclick="editProduct(${product.MASP})"><i class="fa-solid fa-pen-to-square"></i></button>
                            ${btnCtl}
                        </div>
                    </div>
                </div>`;

        });
        document.getElementById("show-product").innerHTML = productHtml;
        
    }
}

var resultProduct;
    function showProduct(){
        let selectOp = document.getElementById('admin-sanpham-select').value;
        let selectOp2 = document.getElementById('admin-sanpham-type-select').value;
        let valueSearchInput = document.getElementById('content-main-searchbar-sanpham').value;
        currentPage = 1;
        
        if (selectOp === "0") {
            resultProduct = products;
        } else if (selectOp === "7") {
            resultProduct = phanloaisp.filter((item) => item.TRANGTHAI == 0);
        } else if (selectOp >= "1" && selectOp <= "6") {
            resultProduct = phanloaisp.filter((item) => item.MALOAISP == parseInt(selectOp));
            resultProduct = resultProduct.filter((item) => item.TRANGTHAI == 1);
        }
        

        if (selectOp2 !== "0") {
            resultProduct = result.filter((item) => item.MATHUONGHIEU == parseInt(selectOp2));
            resultProduct = result.filter((item) => item.TRANGTHAI == 1);
            
        }
        
        resultProduct = valueSearchInput == "" ? resultProduct : resultProduct.filter(item => {
            return item.TENSP.toString().toUpperCase().includes(valueSearchInput.toString().toUpperCase());
        })

        displayList(resultProduct,itemPerPage,currentPage);
        setupPagination(resultProduct,itemPerPage,currentPage);
        
    }

    function resetData(){
        document.getElementById('admin-sanpham-select').value = "0";
        document.getElementById('admin-sanpham-type-select').value = "0";
        document.getElementById('content-main-searchbar-sanpham').value = "";
        getDsPhanLoaiSP();
        getDsSanPham();
        displayList(products,itemPerPage,currentPage);
        setupPagination(products,itemPerPage,currentPage);
    }


    function BotToTop($a, $b) {
        return $a['GIATIEN'] - $b['GIATIEN'];
    }
    function TopToBot($a, $b) {
        return $b['GIATIEN'] - $a['GIATIEN'];
    }

    function filterByBotToTop(){
        let tmp = resultProduct;
        tmp.sort(BotToTop);
        displayList(tmp,itemPerPage,currentPage);
        setupPagination(tmp,itemPerPage,currentPage);
    }

    function filterByTopToBot(){
        let tmp = resultProduct;
        tmp.sort(TopToBot);
        displayList(tmp,itemPerPage,currentPage);
        setupPagination(tmp,itemPerPage,currentPage);
    }


    
