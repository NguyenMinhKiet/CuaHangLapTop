<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../asset/css/layout_donhang.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <title>Sản Phẩm</title>
</head>

<body>
    <div class="layout">
        <div class="content-item" id="content-donhang">
            <div class="content-header">QUẢN LÝ ĐƠN HÀNG</div>
            <div class="content-main">
                <div class="content-main-control">
                    <div class="content-main-select">
                        <select name="admin-donhang-select" id="admin-donhang-select" onchange="showDonHang()">
                            <option value="0" selected>Tất cả</option>
                            <option value="1">Đã xử lý</option>
                            <option value="2">Chưa xử lý</option>
                        </select>
                    </div>
                    <div class="content-main-searchbar">
                        <form action="searchbar.php" method="get">
                            <input type="text" id="content-main-searchbar-donhang" oninput="showDonHang()">
                            <i class="fa-solid fa-magnifying-glass" onclick="showDonHang()"></i>
                        </form>
                    </div>
                    <div class="content-main-control-filter">
                        <!-- <button id="addNewdonhang"><i class="fa-solid fa-plus"></i></button> -->
                        <button id="resetBtndonhang" onclick="resetDataDonHang()"><i class="fa-solid fa-arrows-rotate"></i></button>
                        <button id="filterByBotToTopBtndonhang" onclick="filterByBotToTopDonHang()"><i class="fa-solid fa-sort-up"></i></button>
                        <button id="filterByToptoBotBtndonhang" onclick="filterByTopToBotDonHang()"><i class="fa-solid fa-sort-down"></i></button>
                    </div>
                </div>
                <div class="content-main-table">
                <table style="width:100%">
                        <thead>
                            <tr>
                                <th>MÃ ĐƠN HÀNG</th>
                                <th>TÊN KHÁCH HÀNG</th>
                                <th>TÊN NHÂN VIÊN</th>
                                <th>MÃ GIỎ HÀNG</th>
                                <th>TRẠNG THÁI</th>
                                <th style="width: 200px;">CHỨC NĂNG</th>
                            </tr>
                        </thead>
                        
                        <tbody id="dataDonHang">
                                <tr>
                                    
                                </tr>
                            </tbody>
                            
                    </table>
            </div>
        </div>
    </div>
    <?php include 'modal_donhang.php' ?>
    </div>

</body>
<script src="../../../asset/js/layout_donhang.js"></script>

</html>