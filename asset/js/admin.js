function getSoNhanVien(){
    // Sử dụng Ajax để gửi yêu cầu lấy tổng số nhân viên
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var response = JSON.parse(xhr.responseText);
            if (response.error) {
                console.error(response.error);
            } else {
                document.getElementById("admin-trangchu-user-nhanvien").innerHTML = "Nhân Viên: " + response.total_employees;
            }
        }
    };
    xhr.open("GET", "../../layout/xuly/admin-xuly/nhanviencount.php", true);
    xhr.send();
}
getSoNhanVien();

function getSoKhachHang(){
    // Sử dụng Ajax để gửi yêu cầu lấy tổng số khách hàng
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var response = JSON.parse(xhr.responseText);
            if (response.error) {
                console.error(response.error);
            } else {
                document.getElementById("admin-trangchu-user-khachhang").innerHTML = "Khách Hàng: " + response.total_customers;
            }
        }
    };
    xhr.open("GET", "../../layout/xuly/admin-xuly/khachhangcount.php", true);
    xhr.send();
}
getSoKhachHang();


function getSoDoanhThu(){
    // Sử dụng Ajax để gửi yêu cầu lấy tổng số khách hàng
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var response = JSON.parse(xhr.responseText);
            if (response.error) {
                console.error(response.error);
            } else {
                document.getElementById("admin-trangchu-doanhthu").innerHTML = "Doanh Thu: " + response.doanhthu;
            }
        }
    };
    xhr.open("GET", "../../layout/xuly/admin-xuly/tinhDoanhThu.php", true);
    xhr.send();
}