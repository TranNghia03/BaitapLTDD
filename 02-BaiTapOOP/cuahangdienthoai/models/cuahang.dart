import 'dienthoai.dart';
import 'hoadon.dart';

class CuaHang {
  late String _tenCuaHang;
  late String _diaChi;
  List<DienThoai> _danhSachDienThoai = [];
  List<HoaDon> _danhSachHoaDon = [];

  CuaHang(this._tenCuaHang, this._diaChi);

  // Thêm điện thoại mới
  void themDienThoai(DienThoai dt) {
    _danhSachDienThoai.add(dt);
    print("Đã thêm điện thoại: ${dt.tenDienThoai}");
  }

  // Tạo hóa đơn mới
  void taoHoaDon(HoaDon hd) {
    _danhSachHoaDon.add(hd);
    print("Đã thêm hóa đơn: ${hd.maHoaDon}");
  }

  // Hiển thị danh sách điện thoại
  void hienThiDanhSachDienThoai() {
    print("Danh sách điện thoại:");
    for (var dt in _danhSachDienThoai) {
      print('---------------------');
      dt.hienThiThongTin();
    }
  }

  // Hiển thị danh sách hóa đơn
  void hienThiDanhSachHoaDon() {
    print("Danh sách hóa đơn:");
    for (var hd in _danhSachHoaDon) {
      print('---------------------');
      hd.hienThiThongTin();
    }
  }
}
