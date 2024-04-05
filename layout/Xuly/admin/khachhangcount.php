<?php
include '../DATABASE.PHP';

// Tạo kết nối
$conn = connect_to_database();

// Truy vấn đếm số nhân viên
$sql = "SELECT COUNT(*) AS total FROM khachhang"; 
$result = mysqli_query($conn, $sql);

// Kiểm tra và gửi kết quả dưới dạng JSON
if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    echo json_encode(array("total_customers" => $row["total"]));
} else {
    echo json_encode(array("total_customers" => "Không có khách hàng nào trong cơ sở dữ liệu."));
}

close_database($conn);
?>
