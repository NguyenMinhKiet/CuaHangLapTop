<?php
// Thực hiện kết nối đến cơ sở dữ liệu
$servername = "localhost"; // Tên máy chủ MySQL
$username = "root"; // Tên người dùng MySQL
$password = ""; // Mật khẩu MySQL
$database = "cuahanglaptop"; // Tên cơ sở dữ liệu

// Tạo kết nối
$conn = mysqli_connect($servername, $username, $password, $database);

// Kiểm tra kết nối
if (!$conn) {
    die(json_encode(array("error" => "Kết nối đến cơ sở dữ liệu thất bại: " . mysqli_connect_error())));
}

// Truy vấn đếm số nhân viên
$sql = "SELECT COUNT(*) AS total FROM nhanvien"; 
$result = mysqli_query($conn, $sql);

// Kiểm tra và gửi kết quả dưới dạng JSON
if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    echo json_encode(array("total_employees" => $row["total"]));
} else {
    echo json_encode(array("error" => "Không có nhân viên trong cơ sở dữ liệu."));
}

// Đóng kết nối
mysqli_close($conn);
?>
