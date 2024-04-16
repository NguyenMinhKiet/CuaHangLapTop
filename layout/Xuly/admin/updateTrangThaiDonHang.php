<?php include 'databaseAccess.php'?>
<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Hàm kiểm tra trước khi gán giá trị
        function check_input($data) {
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
        }
        $jsonData = file_get_contents('php://input');
        $data = json_decode($jsonData, true);

        // Lấy giá trị của các trường từ form sau khi kiểm tra
        $masp = isset($data['idProduct']) ? check_input($data['idProduct']) : '';
        $trangthai = isset($data['TrangThai']) ? check_input($data['TrangThai']) : '';

        // Hiển thị các giá trị đã lấy được để kiểm tra
        echo "Mã SP: " . $masp . "<br>";
        echo "Trạng thái: " . $trangthai . "<br>";

        $conn = connectToDatabase();

        
        
        // Hàm thêm sản phẩm
        function themSanPham($conn, $masp, $trangthai) {
            $sql_sanpham = "UPDATE CHITIETHOADON 
            SET TRANGTHAI = '$trangthai'
            WHERE MAHD = '$masp'";
            if ($conn->query($sql_sanpham) === TRUE) {
                echo "Update trạng thái hóa đơn thành công";
            } else {
                echo "Lỗi: " . $conn->error;
            }
        }

        // Sử dụng các hàm trên
        // Thêm sản phẩm
        themSanPham($conn, $masp,$trangthai);

    } else{
        echo "không nhận được";
    }

?>