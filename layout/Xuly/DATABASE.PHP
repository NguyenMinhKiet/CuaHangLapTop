<?php
// Hàm để tạo kết nối đến cơ sở dữ liệu
function connect_to_database() {
    $servername = "localhost"; // Tên máy chủ MySQL
    $username = "root"; // Tên người dùng MySQL
    $password = ""; // Mật khẩu MySQL
    $database = "cuahanglaptop"; // Tên cơ sở dữ liệu

    // Tạo kết nối
    $conn = mysqli_connect($servername, $username, $password, $database);

    // Kiểm tra kết nối
    if (!$conn) {
        die("Kết nối đến cơ sở dữ liệu thất bại: " . mysqli_connect_error());
    }

    return $conn;
}

// Hàm để thực hiện câu truy vấn SELECT
function execute_select_query($conn, $sql_query) {
    $result = mysqli_query($conn, $sql_query);

    // Kiểm tra và gửi kết quả dưới dạng mảng kết hợp
    if (mysqli_num_rows($result) > 0) {
        $rows = mysqli_fetch_all($result, MYSQLI_ASSOC);
        mysqli_free_result($result);
        return $rows;
    } else {
        return array(); // Trả về mảng rỗng nếu không có dữ liệu
    }
}

// Hàm để thực hiện các câu truy vấn CRUD
function execute_query($conn, $sql_query) {
    if (mysqli_query($conn, $sql_query)) {
        return true; // Trả về true nếu câu truy vấn được thực thi thành công
    } else {
        return false; // Trả về false nếu có lỗi xảy ra
    }
}


function close_database($conn){
    // Đóng kết nối
    mysqli_close($conn);
}

?>
