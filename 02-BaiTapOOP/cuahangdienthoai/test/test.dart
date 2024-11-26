import '../models/cuahang.dart';
import '../models/dienthoai.dart';
import '../models/hoadon.dart';

void main() {
  // Tạo cửa hàng
  var cuaHang = CuaHang("Cửa hàng QNT", "123 Đường BlaBla, Thành phố Ba");

  // Tạo điện thoại
  var dt1 = DienThoai("DT-001", "iPhone 16 promax", "Apple", 5500, 7000, 100, true);
  var dt2 = DienThoai("DT-002", "Galaxy S24 Ultra", "Samsung", 5000, 8000, 50, true);

  // Thêm điện thoại vào cửa hàng
  cuaHang.themDienThoai(dt1);
  cuaHang.themDienThoai(dt2);

  // Hiển thị danh sách điện thoại
  cuaHang.hienThiDanhSachDienThoai();

  // Tạo hóa đơn
  var hoaDon = HoaDon(
      "HD-001", DateTime.now(), dt1, 2, 1900, "Nguyen Van A", "0123456789");

  // Thêm hóa đơn vào cửa hàng
  cuaHang.taoHoaDon(hoaDon);

  // Hiển thị danh sách hóa đơn
  cuaHang.hienThiDanhSachHoaDon();
}
