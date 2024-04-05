<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="asset/css/admin.css">
        <font-awsome>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        </font-awsome>
        <meta charset="UTF-8">
        <title>Admin</title>
    </head>
    <body>
        <div class="container">
            <aside class="sidebar open">
                <div class="top-sidebar">
                    <h1 class="sidebar-title">Laptop SGU</h1>
                </div>
                <div class="middle-sidebar">
                    <ul class="sidebar-list">
                        <li class="sidebar-list-item tab-content active">
                            <a href="#" class="sidebar-link">
                                <div class="sidebar-icon"><i class="fa-solid fa-house"></i></div>
                                <div class="hidden-sidebar">Trang tổng quan</div>
                            </a>
                        </li>
                        <li class="sidebar-list-item tab-content">
                            <a href="#" class="sidebar-link">
                                <div class="sidebar-icon"><i class="fa-solid fa-clock"></i></div>
                                <div class="hidden-sidebar">Sản phẩm</div>
                            </a>
                        </li>
                        <li class="sidebar-list-item tab-content">
                            <a href="#" class="sidebar-link">
                                <div class="sidebar-icon"><i class="fa-solid fa-address-book"></i></div>
                                <div class="hidden-sidebar">Khách hàng</div>
                            </a>
                        </li>
                        <li class="sidebar-list-item tab-content">
                            <a href="#" class="sidebar-link">
                                <div class="sidebar-icon"><i class="fa-solid fa-cart-shopping"></i></div>
                                <div class="hidden-sidebar">Đơn hàng</div>
                            </a>
                        </li>
                        <li class="sidebar-list-item tab-content">
                            <a href="#" class="sidebar-link">
                                <div class="sidebar-icon"><i class="fa-solid fa-chart-simple"></i></div>
                                <div class="hidden-sidebar">Thống kê</div>
                            </a>
                        </li>
                </div>
                <div class="bottom-sidebar">
                    <ul class="sidebar-list">
                        <li class="sidebar-list-item user-logout">
                            <a href="index.html" class="sidebar-link">
                                <div class="sidebar-icon"><i class="fa-solid fa-arrow-left"></i></div>
                                <div class="hidden-sidebar">Trang chủ</div>
                            </a>
                        </li>
                        <li class="sidebar-list-item user-logout">
                            <a href="#" class="sidebar-link">
                                <div class="sidebar-icon"><i class="fa-solid fa-user"></i></div>
                                <div class="hidden-sidebar" id="name-acc"></div>
                            </a>
                        </li>
                        <li class="sidebar-list-item user-logout">
                            <a href="index.html" class="sidebar-link" id="logout-acc">
                                <div class="sidebar-icon"><i class="fa-solid fa-arrow-right-from-bracket"></i></div>
                                <div class="hidden-sidebar">Đăng xuất</div>
                            </a>
                        </li>
                    </ul>
                </div>
            </aside>
            <main class="content">
                <div class="section active">
                    <h1 class="page-title">Trang tổng quát của cửa hàng Laptop SGU</h1>
                    <div class="cards">
                        <div class="card-single">
                            <div class="box">
                                <h2 id="amount-user">0</h2>
                                <div class="on-box">
                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE2RZRRtlivTzojOhFnQca5NoyOZAIGoQpMGY--8H8S1irIeUx9GywSO7hhhS_yFTSwvc&usqp=CAU" alt="khachhang" style="width: 200px;">
                                    <h3>Khách hàng</h3>
                                    <p>Khách hàng là một cá nhân, tổ chức hay doanh nghiệp nhận hàng hóa, dịch vụ, sản phẩm hoặc ý tưởng từ một cá nhân/ công ty khác để đổi lấy giá trị có thể là tiền hoặc những thứ gì có giá trị tương đương. Khách hàng tạo thành xương sống của doanh nghiệp.</p>
                                </div>
                            </div>
                        </div>

                        <div class="card-single">
                            <div class="box">
                                <h2 id="amount-product">0</h2>
                                <div class="on-box">
                                    <img src="https://lh3.googleusercontent.com/a/ACg8ocKtYKEUdOcBkBu09FFBZH3SyadyXhdUOX2pRdE6KINTgg=s360-c-no" alt="sanpham" style="width: 200px;">
                                    <h3>Sản phẩm</h3>
                                    <p>Đồng hồ đeo tay có nhiều ý nghĩa: biểu tượng địa vị, phụ kiện thời trang, thiết bị theo dõi nhịp tim và tất nhiên là công cụ để xem giờ. Với rất nhiều chức năng có sẵn trên đồng hồ kim và đồng hồ thông minh, các thương hiệu có nhiều cơ hội để kết nối với khách hàng khi họ tìm mua chiếc đồng hồ phù hợp với nhu cầu.</p>
                                </div>
                            </div>
                        </div>

                        <div class="card-single">
                            <div class="box">
                                <h2 id="doanh-thu">0</h2>
                                <div class="on-box">
                                    <img src="https://media.istockphoto.com/id/1363715182/vi/vec-to/bi%E1%BB%83u-t%C6%B0%E1%BB%A3ng-m%C5%A9i-t%C3%AAn-v%C3%A0-bi%E1%BB%83u-%C4%91%E1%BB%93-thanh-t%C4%83ng-tuy%E1%BB%87t-v%E1%BB%9Di-cho-doanh-s%E1%BB%91-b%C3%A1n-h%C3%A0ng-v-v.jpg?s=612x612&w=0&k=20&c=b9J5pPDbIzdSS2h0lIWVm6O5WFXtYBsxjowWkciwy7A=" alt="doanhthu" style="width: 200px;">
                                    <h3>Doanh thu</h3>
                                    <p>Doanh thu từ hoạt động bán hàng là tổng số tiền mà doanh nghiệp thu được từ việc bán sản phẩm, cung cấp dịch vụ trong một kỳ kế toán. Đây là một chỉ số quan trọng phản ánh tình hình hoạt động kinh doanh của doanh nghiệp. </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Product -->
                <div class="section product-all">
                    <div class="admin-control">
                        <div class="admin-control-left">
                            <select name="brands-select" id="brands-select" onchange="showProduct()">
                                <option>Tất cả</option>
                                <option>Xiaomi</option>
                                <option>SamSung</option>
                                <option>Apple</option>
                                <option>Amazfit</option>
                                <option>Garmin</option>
                                <option>KidCare</option>
                                <option>Đã ẩn</option>
                            </select>
                        </div>
                        <div class="admin-control-center">
                            <form action="" class="form-search">
                                <span class="search-btn"><i class="fa-solid fa-magnifying-glass"></i></span>
                                <input id="form-search-product" type="text" class="form-search-input" placeholder="Tìm kiếm đồng hồ..." oninput="showProduct()">
                            </form>
                        </div>
                        <div class="admin-control-right">
                            <button id="btn-cancel-product" onclick="cancelSearchProduct()">
                                <i class="fa-solid fa-rotate-right"></i> 
                                Làm mới
                            </button>
                            <button id="btn-add-product">
                                <div class="item">
                                    <i class="fa-solid fa-plus"></i> 
                                    Thêm món mới
                                </div>
                            </button> 
                        </div>
                    </div>
                    <div class="box-product">
                        <div id="show-product"></div>
                        <div class="page-nav">
                            <ul class="page-nav-list"></ul>
                        </div>
                    </div>
                </div>
                <!-- User -->
                <div class="section user">
                    <div class="admin-control">
                        <select name="admin-user-select" id="admin-user-select"onchange="showUser()">
                            <option>Tất cả</option>
                            <option>Hoạt động</option>
                            <option>Bị khóa</option>
                        </select>

                        <form action="" class="form-search">
                            <span class="search-btn"><i class="fa-solid fa-magnifying-glass"></i></span>
                            <input id="form-search-user" type="text" class="form-search-input" placeholder="Tìm kiếm khách hàng..." oninput="showUser()">
                        </form>
                        <!-- <form action="" class="form-date">
                            <label for="time-start">Từ</label>
                            <input type="date" class="form-control-date" id="user-start-time" onchange="showUser()">
                        </form>

                        <form action="" class="form-date">
                            <label for="time-end">Đến</label>
                            <input type="date" class="form-control-date" id="user-end-time" onchange="showUser()">
                        </form> -->

                        <button id="btn-cancel-user" class="btn-reset" onclick="cancelSearchUser()">
                            <i class="fa-solid fa-rotate-right"></i> 
                        </button>

                        <!-- <button id="btn-add-user" class="btn-add">
                            <i class="fa-solid fa-plus"></i> 
                            Thêm User
                        </button> -->
                    </div>
                    <div class="admin-user-content">
                        <div class="table">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        <td>ID</td>
                                        <td>TÊN ĐĂNG NHẬP</td>
                                        <td>MẬT KHẨU</td>
                                        <td>EMAIL</td>
                                        <td>SĐT</td>
                                        <td>TÌNH TRẠNG</td>
                                        <td></td>
                                    </tr>
                                </thead>
                                <tbody id="showUser"></tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- Order -->
                <div class="section order">
                    <div class="admin-control">
                        <select name="status" id="status" onchange="findOrder()">
                            <option value="2">Tất cả</option>
                            <option value="0">Chưa xử lý</option>
                            <option value="1">Đã xử lý</option>
                        </select>

                        <form action="" class="form-search">
                            <span class="search-btn"><i class="fa-solid fa-magnifying-glass"></i></span>
                            <input id="form-search-order" type="text" name="" class="form-search-input" placeholder="Tìm kiếm đơn hàng..." oninput="findOrder()">
                        </form>
                        <div class="admin-control-right-order">
                            <form action="" class="form-date">
                                <label for="time-start">Từ</label>
                                <input type="date" class="form-control-date" id="order-time-start" onchange="findOrder()">
                            </form>
    
                            <form action="" class="form-date">
                                <label for="time-end">Đến</label>
                                <input type="date" class="form-control-date" id="order-time-end" onchange="findOrder()">
                            </form>
    
                            <button class="btn-reset" onclick="cancelSearchOrder()">
                                <i class="fa-solid fa-rotate-right"></i> 
                            </button>
                        </div>
                    </div>
                <div class="table">
                    <table width="100%">
                        <thead>
                            <tr>
                                <td>Mã đơn</td>
                                <td>Khách hàng</td>
                                <td>Ngày đặt</td>
                                <td>Tổng tiền</td>
                                <td>Trạng thái</td>
                                <td>Thao tác</td>
                            </tr>
                        </thead>
                        <tbody id="showOrder"></tbody>
                    </table>
                </div>
            </div>
                <!-- Thống kê -->
                <div class="section thongke">
                    <div class="admin-control">
                        <div class="admin-control-left">
                            <select name="phanloai" id="phanloai" onchange="Thongke()">
                                <option>Tất cả</option>
                                <option>Xiaomi</option>
                                <option>SamSung</option>
                                <option>Apple</option>
                                <option>Amazfit</option>
                                <option>Garmin</option>
                                <option>KidCare</option>
                            </select>
                        </div>
                        <div class="admin-control-center">
                            <form action="" class="form-search">
                                <span class="search-btn"><i class="fa-solid fa-magnifying-glass"></i></span>
                                <input id="form-search-tk" type="text" name="" class="form-search-input" placeholder="Tìm kiếm tên sản phẩm..." oninput="Thongke()">
                            </form>
                        </div>
                        <div class="admin-control-right tk">
                            
                            <button onclick="Thongke(0)"><i class="fa-solid fa-arrow-down-short-wide"></i></button>
                            <button onclick="Thongke(1)"><i class="fa-solid fa-arrow-up-short-wide"></i></button>
                            <button onclick="Thongke(2)"><i class="fa-solid fa-rotate-right"></i></button>
                        </div>
                    </div>
                    <div class="btn-display-thongke">
                        <div class="statistical-item">
                            <div class="statistical-item-left">
                                <p>Số lượng sản phẩm được bán ra</p>
                                <div id="quantity-product-sold"></div>
                            </div>
                            <div class="statistical-item-right">
                                <i class="fa-solid fa-gift"></i>
                            </div>
                        </div>
                        <div class="statistical-item">
                            <div class="statistical-item-left">
                                <p>Số đơn hàng đi được</p>
                                <div id="quanlity-order"></div>
                            </div>
                            <div class="statistical-item-right">
                                <i class="fa-solid fa-bag-shopping"></i>
                            </div>
                        </div>
                        <div class="statistical-item">
                            <div class="statistical-item-left">
                                <p>Doanh thu hiện tại</p>
                                <div id="revenue"></div>
                            </div>
                            <div class="statistical-item-right">
                                <i class="fa-solid fa-coins"></i>
                            </div>
                        </div>
                    </div>
                    <div class="table">
                        <table width="100%">
                            <thead>
                                <tr>
                                    <td>STT</td>
                                    <td>Loại sản phẩm</td>
                                    <td>Số lượng</td>
                                    <td>Doanh thu</td>
                                    <td></td>
                                </tr>
                            </thead>
                            <tbody id="showThongKe">
                            </tbody>
                        </table>
                    </div>
                </div>
            </main>
            <div class="modal add-product">
                <div class="modal-container">
                    <div class="modal-head">
                        <h3 class="modal-container-title edit-product-title" >CHỈNH SỬA SẢN PHẨM</h3>
                        <h3 class="modal-container-title add-product-title">THÊM MỚI SẢN PHẨM</h3>
                        <button class="modal-close"><i class="fa-solid fa-x"></i></button>
                    </div>
                    <div class="modal-container-content">
                        <div class="modal-content-left">
                            <img class="image-upload-preview" alt="Hãy thêm ảnh mới">
                            <form action="" class="form-group file">
                                <label for="up-hinh-anh" class="form-label-file"><i class="fa-solid fa-cloud-arrow-up"></i>Chọn hình ảnh</label>
                                <input accept="image/png, image/jpg, image/jpeg" id="up-hinh-anh" name="up-hinh-anh" type="file">
                            </form>
                        </div>
                        <div class="modal-content-right">
                            <form action="" class="form-group">
                                <label for="product-name-form" class="form-label">Tên sản phẩm</label>
                                <input type="text" id="product-name-form" name="product-name-form" placeholder="Nhập tên sản phẩm" class="form-control">
                                <span class="form-message"></span>
                            </form>

                            <form action="" class="form-group">
                                <label for="product-brand-select" class="form-label">Chọn thương hiệu</label>
                                <select name="product-brand-select" id="product-brand-select">
                                    <option>Xiaomi</option>
                                    <option>SamSung</option>
                                    <option>Apple</option>
                                    <option>Amazfit</option>
                                    <option>Garmin</option>
                                    <option>KidCare</option>
                                </select>
                                <span class="form-message"></span>
                            </form>

                            <form action="" class="form-group">
                                <label for="product-price-form" class="form-label">Giá bán</label>
                                <input type="text" id="product-price-form" name="product-price-form" placeholder="Nhập giá sản phẩm" class="form-control" pattern="^[0-9]{1,3}(?:\.[0-9]{3})*$">
                                <span id="form-message"></span>
                            </form>
                            
                            <form action="" class="form-group">
                                <label for="product-des-form" class="form-label">Mô tả</label>
                                <input type="text" id="product-des-form" name="product-des-form" placeholder="Mô tả sản phẩm" class="form-control">
                                <span class="form-message"></span>
                            </form>
                            <div class="form-control-save">
                                <button class="form-btn-save form-label-file add-product-title" onclick="btnSaveProduct()"><i class="fa-solid fa-pen"></i>LƯU</button>
                                <button class="form-btn-save form-label-file edit-product-title" onclick="btnEditProduct()"><i class="fa-solid fa-pen"></i>LƯU</button>                                
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="modal add-user">
                <div class="modal-container">
                    <div class="modal-head">
                        <h3 class="modal-container-title edit-user-title" >CHỈNH SỬA THÔNG TIN KHÁCH HÀNG</h3>
                        <h3 class="modal-container-title add-user-title">THÊM MỚI KHÁCH HÀNG MỚI</h3>
                        <button class="modal-close"><i class="fa-solid fa-x"></i></button>
                    </div>
                    <div class="modal-container-content user">
                        <form action="" class="form-group">
                            <label for="user-username-form" class="form-label">Username</label>
                            <input type="text" id="user-username-form" name="user-username-form" placeholder="VD: minhkietnguyen" class="form-control" oninput="checkDataUsername()">
                            <span class="form-message" id="user-username-message">Username không hợp lệ [Không chứa ký tự đặc biệt]</span>
                        </form>
                        <form action="" class="form-group">
                            <label for="user-password-form" class="form-label">Mật khẩu</label>
                            <input type="text" id="user-password-form" name="user-password-form" placeholder="VD: 123" class="form-control" oninput="checkDataPassword()">
                            <span class="form-message" id="user-password-message">Mật khẩu không hợp lệ [Không chứa ký tự đặc biệt]</span>
                        </form>
                        <form action="" class="form-group">
                            <label for="user-email-form" class="form-label">Email</label>
                            <input type="text" id="user-email-form" name="user-email-form" placeholder="VD: nguyenminhkiet@gmail.com" class="form-control" oninput="checkDataEmail()">
                            <span class="form-message" id="user-email-message">Email không hợp lệ [ten@gmail.com]</span>
                        </form>
                        <form action="" class="form-group">
                            <label for="user-sdt-form" class="form-label">Số điện thoại</label>
                            <input type="text" id="user-sdt-form" name="user-sdt-form" placeholder="VD: 0932667135" class="form-control" oninput="checkDataSdt()">
                            <span class="form-message" id="user-sdt-message">SĐT không hợp lệ [10 kí tự số]</span>
                        </form>
                        
                        <div class="form-control-save">
                            <button class="form-btn-save form-label-file add-user-title" onclick="btnSaveUser()"><i class="fa-solid fa-pen"></i>LƯU</button>
                            <button class="form-btn-save form-label-file edit-user-title" onclick="btnEditUser()"><i class="fa-solid fa-pen"></i>LƯU</button>                                
                        </div>
                    </div>
                </div>
            </div>
                    <div class="modal detail-order">
                        <div class="modal-container-order">
                            <div class="modal-container-head">
                                <h3 class="modal-container-title">CHI TIẾT ĐƠN HÀNG</h3>
                                <button class="modal-close"><i class="fa-regular fa-xmark"></i></button>
                            </div>
                            <div class="modal-detail-order">
                            </div>
                            <div class="modal-detail-bottom">               
                            </div>
                            </form>
                        </div>
                    </div>
                
                <div class="modal detail-order-product">
                    <div class="modal-container-thongke">
                        <div class="modal-container-head-thongke">
                            <div class="modal-container-title">Chi tiết sản phẩm</div>
                            <button class="modal-close"><i class="fa-regular fa-xmark"></i></button>
                        </div>
                        <div class="table">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        <td>Mã đơn</td>
                                        <td>Số lượng</td>
                                        <td>Đơn giá</td>
                                        <td>Thời gian đặt hàng</td>
                                        <td>Thời gian giao hàng</td>
                                    </tr>
                                </thead>
                                <tbody class="show-detail-order-product"></tbody>
                            </table>
        
                        </div>
                    </div>
                </div>
            
        </div>

        <script src="asset/js/admin.js"></script>
        <!-- <script src="/js/index.js"></script> -->
    </body>
</html>