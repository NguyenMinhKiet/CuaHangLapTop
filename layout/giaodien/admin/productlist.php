<?php include '../../xuly/databaseAccess.php'?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../asset/css/productlist.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <title>Danh sách sản phẩm</title>
</head>

<body>
<?php
$conn = connectToDatabase();
// Truy vấn cơ sở dữ liệu
$sql = "SELECT *
FROM chitietsanpham
INNER JOIN sanpham ON sanpham.MASP = chitietsanpham.MASP
INNER JOIN thuonghieu ON chitietsanpham.MATHUONGHIEU = thuonghieu.MATHUONGHIEU;
" ;
$result = $conn->query($sql);

// Kiểm tra và hiển thị dữ liệu
if ($result->num_rows > 0) {
    // Đầu mục của danh sách
    echo '<div class="content-main-list">';

    // Lặp qua mỗi hàng dữ liệu
    while($row = $result->fetch_assoc()) {
        // Hiển thị dữ liệu trong mỗi hàng
        echo '<div class="content-main-list-item">';
        echo '<a href="#" class="content-main-list-item-start">';
        echo '<div class="content-main-list-item-start-image">';
        echo '<img src="' . '../../asset/image/' .$row['HINHSP'] . '" alt="' . 'HÌNH SẢN PHẨM' . '">';
        echo '</div>';
        echo '</a>';
        echo '<div class="content-main-list-item-mid">';
        echo '<div class="content-main-list-item-mid-title">';
        echo '<h2 id="admin-item-name">' . $row['TENSP'] . '</h2>';
        echo '</div>';
        echo '<div class="content-main-list-item-mid-description">';
        echo '<p id="admin-item-des">' . $row['MOTA'] . '</p>';
        echo '</div>';
        echo '<div class="content-main-list-item-mid-itemType">';
        echo '<p id="admin-item-type">' . $row['THUONGHIEU'] . '</p>';
        echo '</div>';
        echo '</div>';
        echo '<div class="content-main-list-item-end">';
        echo '<button id="AdminEditItemBtn"><i class="fa-solid fa-pen-to-square"></i></button>';
        echo '<button id="AdminHideItemBtn"><i class="fa-solid fa-trash"></i></button>';
        echo '</div>';
        echo '</div>';
    }

    // Cuối danh sách
    echo '</div>';
} else {
    echo "Không có sản phẩm.";
}

// Đóng kết nối
$conn->close();
?>


    <div class="content-main-list-item 2">
        <a href="#" class="content-main-list-item-start">
            <div class="content-main-list-item-start-image">
                <img src="" alt="Hình ảnh laptop">
            </div>
        </a>
        <div class="content-main-list-item-mid">
            <div class="content-main-list-item-mid-title">
                <h2 id="admin-item-name">Tên sản phẩm</h2>
            </div>
            <div class="content-main-list-item-mid-description">
                <p id="admin-item-des">Mô tả ngắn gọn sản phẩm</p>
            </div>
            <div class="content-main-list-item-mid-itemType">
                <p id="admin-item-type">Loại sản phẩm</p>
            </div>
        </div>
        <div class="content-main-list-item-end">
            <button id="AdminEditItemBtn"><i class="fa-solid fa-pen-to-square"></i></button>
            <button id="AdminHideItemBtn"><i class="fa-solid fa-trash"></i></button>
        </div>
    </div>
    <div class="content-main-list-item 3">
        <a href="#" class="content-main-list-item-start">
            <div class="content-main-list-item-start-image">
                <img src="" alt="Hình ảnh laptop">
            </div>
        </a>
        <div class="content-main-list-item-mid">
            <div class="content-main-list-item-mid-title">
                <h2 id="admin-item-name">Tên sản phẩm</h2>
            </div>
            <div class="content-main-list-item-mid-description">
                <p id="admin-item-des">Mô tả ngắn gọn sản phẩm</p>
            </div>
            <div class="content-main-list-item-mid-itemType">
                <p id="admin-item-type">Loại sản phẩm</p>
            </div>
        </div>
        <div class="content-main-list-item-end">
            <button id="AdminEditItemBtn"><i class="fa-solid fa-pen-to-square"></i></button>
            <button id="AdminHideItemBtn"><i class="fa-solid fa-trash"></i></button>
        </div>
    </div>

    <div class="content-main-list-item 4">
        <a href="#" class="content-main-list-item-start">
            <div class="content-main-list-item-start-image">
                <img src="" alt="Hình ảnh laptop">
            </div>
        </a>
        <div class="content-main-list-item-mid">
            <div class="content-main-list-item-mid-title">
                <h2 id="admin-item-name">Tên sản phẩm</h2>
            </div>
            <div class="content-main-list-item-mid-description">
                <p id="admin-item-des">Mô tả ngắn gọn sản phẩm</p>
            </div>
            <div class="content-main-list-item-mid-itemType">
                <p id="admin-item-type">Loại sản phẩm</p>
            </div>
        </div>
        <div class="content-main-list-item-end">
            <button id="AdminEditItemBtn"><i class="fa-solid fa-pen-to-square"></i></button>
            <button id="AdminHideItemBtn"><i class="fa-solid fa-trash"></i></button>
        </div>
    </div>

    <div class="content-main-list-item 5">
        <a href="#" class="content-main-list-item-start">
            <div class="content-main-list-item-start-image">
                <img src="" alt="Hình ảnh laptop">
            </div>
        </a>
        <div class="content-main-list-item-mid">
            <div class="content-main-list-item-mid-title">
                <h2 id="admin-item-name">Tên sản phẩm</h2>
            </div>
            <div class="content-main-list-item-mid-description">
                <p id="admin-item-des">Mô tả ngắn gọn sản phẩm</p>
            </div>
            <div class="content-main-list-item-mid-itemType">
                <p id="admin-item-type">Loại sản phẩm</p>
            </div>
        </div>
        <div class="content-main-list-item-end">
            <button id="AdminEditItemBtn"><i class="fa-solid fa-pen-to-square"></i></button>
            <button id="AdminHideItemBtn"><i class="fa-solid fa-trash"></i></button>
        </div>
    </div>
</body>

</html>