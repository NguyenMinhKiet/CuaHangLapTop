<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../asset/css/admin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <title>Trang quản lý</title>
</head>

<body>

    <!-- sidebar -->
    <div class="sidebar">

        <div class="sidebar-header">
            <a href="#">
                <div class="sidebar-header-image">
                    <i class="fa-solid fa-laptop"></i>
                </div>
                <p class="sidebar-header-name">Cửa hàng laptop</p>
            </a>
        </div>

        <div class="sidebar-content">
            <div class="sidebar-content-name">Bảng điều khiển</div>
            <ul class="sidebar-control-list">

                <!-- layout trang chủ -->
                <li class="sidebar-control-list-item" id="admin-trangchu-layout" name="admin-trangchu-layout">
                    <a href="#content-trangchu">
                        <div class="sidebar-item-image">
                            <i class="fa-solid fa-house"></i>
                        </div>
                        <div class="sidebar-item-name">Trang chủ</div>
                    </a>
                </li>


                <!-- layout nhân viên -->
                <li class="sidebar-control-list-item" id="admin-nhanvien-layout" name="admin-nhanvien-layout">
                    <a href="#content-nhanvien">
                        <div class="sidebar-item-image">
                            <i class="fa-solid fa-user"></i>
                        </div>
                        <div class="sidebar-item-name">Quản lý nhân viên</div>
                    </a>
                </li>

                <!-- layout khách hàng -->
                <li class="sidebar-control-list-item" id="admin-khachhang-layout" name="admin-khachhang-layout">
                    <a href="#content-khachhang">
                        <div class="sidebar-item-image">
                            <i class="fa-solid fa-users"></i>
                        </div>
                        <div class="sidebar-item-name">Quản lý khách hàng</div>
                    </a>
                </li>

                <!-- layout sản phẩm -->
                <li class="sidebar-control-list-item" id="admin-sanpham-layout" name="admin-sanpham-layout">
                    <a href="#content-sanpham">
                        <div class="sidebar-item-image">
                            <i class="fa-solid fa-laptop"></i>
                        </div>
                        <div class="sidebar-item-name">Quản lý sản phẩm</div>
                    </a>
                </li>

                <!-- layout thống kê -->
                <li class="sidebar-control-list-item" id="admin-thongke-layout" name="admin-thongke-layout">
                    <a href="#content-thongke">
                        <div class="sidebar-item-image">
                            <i class="fa-solid fa-chart-line"></i>
                        </div>
                        <div class="sidebar-item-name">Thống kê</div>
                    </a>
                </li>
            </ul>
        </div>

        <div class="sidebar-footer">

            <div class="sidebar-footer-name">Chức năng khác</div>

            <ul class="sidebar-footer-control-list">
                <li class="sidebar-footer-control-list-item" id="admin-username" name="admin-username">
                    <a href="#">
                        <div class="sidebar-item-image">
                            <i class="fa-solid fa-user-tie"></i>
                        </div>
                        <div class="sidebar-item-name"><?php include '../../xuly/admin/getAdminSignin.php' ?></div>
                    </a>
                </li>

                <li class="sidebar-footer-control-list-item" id="admin-back-btn" name="admin-back-btn">
                    <a href="#">
                        <div class="sidebar-item-image">
                            <i class="fa-solid fa-arrow-left"></i>
                        </div>
                        <div class="sidebar-item-name">Trở lại trang chính</div>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <!-- content -->
    <div class="content">
        <!-- layout trang chủ -->
        <div class="content-item" id="content-trangchu">
            <div class="content-header">Trang chủ</div>
            <div class="content-main">
                <div class="content-main-trangchu-cards">
                    <!-- item user -->
                    <div class="content-main-trangchu-card 1">
                        <div class="content-main-trangchu-card-header">
                            <i class="fa-solid fa-user"></i>
                        </div>
                        <div class="content-main-trangchu-card-name">Users</div>
                        <div class="content-main-trangchu-card-detail">
                            <div class="content-main-trangchu-card-detail-nhanvien" id="admin-trangchu-user-nhanvien" name="admin-trangchu-user-nhanvien"></div>
                            <div class="content-main-trangchu-card-detail-khachhang" id="admin-trangchu-user-khachhang" name="admin-trangchu-user-khachhang"></div>
                        </div>
                    </div>

                    <!-- item product -->
                    <div class="content-main-trangchu-card 2">
                        <div class="content-main-trangchu-card-header">
                            <i class="fa-solid fa-laptop"></i>
                        </div>
                        <div class="content-main-trangchu-card-name">Products</div>
                        <div class="content-main-trangchu-card-detail">
                            <div class="content-main-trangchu-card-detail-nhanvien" id="admin-trangchu-product" name="admin-trangchu-product"></div>
                            <div class="content-main-trangchu-card-detail-khachhang" id="admin-trangchu-product" name="admin-trangchu-product"></div>
                        </div>
                    </div>

                    <!-- item doanh thu -->
                    <div class="content-main-trangchu-card 3">
                        <div class="content-main-trangchu-card-header">
                            <i class="fa-solid fa-money-bill"></i>
                        </div>
                        <div class="content-main-trangchu-card-name">Doanh thu</div>
                        <div class="content-main-trangchu-card-detail">
                            <div class="content-main-trangchu-card-detail-nhanvien" id="admin-trangchu-doanhthu" name="admin-trangchu-doanhthu">
                                100.000.000 VNĐ
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- layout nhân viên -->
        <div class="content-item" id="content-nhanvien">
            <div class="content-header">Quản lý nhân viên</div>
            <div class="content-main">
                <div class="content-main-nhanvien">
                    <div class="content-main-control">
                        <div class="content-main-select">
                            <select name="admin-nhanvien-select" id="admin-nhanvien-select">
                                <option value="0">Tất cả</option>
                                <option value="1">Nhân viên Kho</option>
                                <option value="2">Quản lý</option>
                                <option value="3">Nhân viên bán hàng</option>
                            </select>
                        </div>
                        <div class="content-main-searchbar">
                            <form action="searchbar.php" method="get">
                                <input type="text" id="content-main-searchbar-nhanvien">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </form>
                        </div>
                        <div class="content-main-control-filter">
                            <button class="resetBtnNhanVien"><i class="fa-solid fa-arrows-rotate"></i></button>
                            <button id="filterByBotToTopBtnNhanVien"><i class="fa-solid fa-sort-up"></i></button>
                            <button class="filterByToptoBotBtnNhanVien"><i class="fa-solid fa-sort-down"></i></button>
                        </div>
                    </div>
                    <div class="content-main-table">

                    </div>
                </div>
            </div>
        </div>

        <!-- layout khách hàng -->
        <div class="content-item" id="content-khachhang">
            <div class="content-header">Quản lý khách hàng</div>
            <div class="content-main">
                <div class="content-main-control">
                    <div class="content-main-select">
                        <select name="admin-khachhang-select" id="admin-khachhang-select">
                            <option value="0">Tất cả</option>
                            <option value="1">Hoạt động</option>
                            <option value="2">Bị khóa</option>
                        </select>
                    </div>
                    <div class="content-main-searchbar">
                        <form action="searchbar.php" method="get">
                            <input type="text" id="content-main-searchbar-khachhang">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </form>
                    </div>
                    <div class="content-main-control-filter">
                        <button class="resetBtnKhachHang"><i class="fa-solid fa-arrows-rotate"></i></button>
                        <button id="filterByBotToTopBtnKhachHang"><i class="fa-solid fa-sort-up"></i></button>
                        <button class="filterByToptoBotBtnKhachHang"><i class="fa-solid fa-sort-down"></i></button>
                    </div>
                </div>
                <div class="content-main-list">

                </div>
            </div>
        </div>

        <!-- layout Sản phẩm -->
        <div class="content-item" id="content-sanpham">
            <div class="content-header">Quản lý sản phẩm</div>
            <div class="content-main">
                <div class="content-main-control">
                    <div class="content-main-select">
                        <select name="admin-sanpham-select" id="admin-sanpham-select">
                            <option value="0" selected>Tất cả</option>
                            <option value="1">Laptop Doanh Nghiệp</option>
                            <option value="2">Laptop Doanh Nhân</option>
                            <option value="3">Laptop Gaming</option>
                            <option value="4">Laptop Học Sinh - Sinh Viên</option>
                            <option value="5">Laptop Văn Phòng</option>
                            <option value="6">Laptop Đồ Họa - Kỹ Thuật</option>
                        </select>
                    </div>
                    <div class="content-main-select">
                        <select name="admin-sanpham-type-select" id="admin-sanpham-type-select">
                            <option value="0" selected>Tất cả</option>
                            <option value="1">ACER</option>
                            <option value="2">APPLE</option>
                            <option value="3">ASUS</option>
                            <option value="4">DELL</option>
                            <option value="5">GIGABYTE</option>
                            <option value="6">HP</option>
                            <option value="7">LG</option>
                            <option value="8">LENOVO</option>
                            <option value="9">MSI</option>
                        </select>
                    </div>
                    <div class="content-main-searchbar">
                        <form action="searchbar.php" method="get">
                            <input type="text" id="content-main-searchbar-sanpham">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </form>
                    </div>
                    <div class="content-main-control-filter">
                        <button id="addNewItemBtn"><i class="fa-solid fa-plus"></i></button>
                        <button id="resetBtnSanPham"><i class="fa-solid fa-arrows-rotate"></i></button>
                        <button id="filterByBotToTopBtnSanPham"><i class="fa-solid fa-sort-up"></i></button>
                        <button id="filterByToptoBotBtnSanPham"><i class="fa-solid fa-sort-down"></i></button>
                    </div>
                </div>
                <div class="content-main-table">
                    <?php include 'productlist.php'?>
                </div>
            </div>
        </div>

        <!-- layout thống kê -->
        <div class="content-item" id="content-thongke">
            <div class="content-header">Thống kê</div>
            <div class="content-main">
                <div class="content-main-control">
                    <div class="content-main-select">
                        <select name="admin-thongke-select" id="admin-thongke-select">
                            <option value="0">Tất cả</option>
                            <option value="1">Người dùng</option>
                            <option value="2">Sản phẩm</option>
                            <option value="3">Doanh thu</option>
                        </select>
                    </div>
                    <div class="content-main-searchbar">
                        <form action="searchbar.php" method="get">
                            <input type="text" id="content-main-searchbar-thongke">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </form>
                    </div>
                    <div class="content-main-control-filter">
                        <button id="resetBtnThongKe"><i class="fa-solid fa-arrows-rotate"></i></button>
                        <button id="filterByBotToTopBtnThongKe"><i class="fa-solid fa-sort-up"></i></button>
                        <button id="filterByToptoBotBtnThongKe"><i class="fa-solid fa-sort-down"></i></button>
                    </div>
                </div>
                <div class="content-main-table">

                </div>
            </div>
        </div>
    </div>

    <div class="modal AddSanPham">
        <form action="addproduct.php" class="formAddSanPham" method="POST">
            <div class="formAddProductImage">
                <input type="file" name="newProduct-image" id="newProduct-image">
            </div>
            <div class="formAddProduct">
                <h2>THÊM SẢN PHẨM</h2>  
                <div class="formAddProduct-detail">
                    <div>
                        <Label for="nameProduct">Tên sản phẩm:</Label>
                        <Input type="text" id="admin-add-sproduct-name" placeholder="Nhập tên sản phẩm.."></Input>
                    </div>
                    <div>
                        <label for="desProduct">Mô tả sản phẩm:</label>
                        <Input type="text" id="admin-add-product-des" placeholder="Mô tả sản phẩm.." >
                    </div>
                    <div>
                        <label for="type">Chọn loại sản phẩm:</label>
                        <select name="admin-add-product-type" id="admin-add-product-type">
                            <option value="0">Asus</option>
                            <option value="1">Lenovo</option>
                            <option value="2">Alienware</option>
                        </select>
                    </div>
                    
                    <div class="form-control">
                        <input type="button" value="Hủy" id="AddProductCancelBtn">
                        <input type="submit" value="Thêm" name="submit">
                    </div>
                    
                </div>
            </div>


        </form>
    </div>

    <script src="../../../asset/js/admin.js"></script>
</body>

</html>