 <?php 
$connect= mysqli_connect('127.0.0.1','root','','quanlyphonggym');

if (!$connect) {
    exit('Kết nối không thành công!');
}

$arrDanhMuc = array();
class danhmuc{
    var $id_DanhMuc;
    var $TenDanhMuc;
    var $HinhAnh;

    function danhmuc($_id, $_name, $_image){
        $this->id_DanhMuc= $_id;
        $this->TenDanhMuc= $_name;
        $this->HinhAnh = $_image;
    }
}
$sql = "SELECT * FROM danhmucsanpham";
$result = $connect->query($sql);
// if ($result->num_rows > 0) {
// Load dữ liệu lên website
while($row = mysqli_fetch_array($result)) {

 array_push($arrDanhMuc, new danhmuc($row["id_DanhMuc"], $row["TenDanhMuc"], $row["HinhAnh"]));
}
echo json_encode($arrDanhMuc);
// } else {
// echo "0 results";
// }
$connect->close();
?> 