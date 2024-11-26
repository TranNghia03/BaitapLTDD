import 'dienthoai.dart';

class HoaDon {
  late String _maHoaDon;
  late DateTime _ngayBan;
  late DienThoai _dienThoai;
  late int _soLuongMua;
  late double _giaBanThucTe;
  late String _tenKhachHang;
  late String _soDienThoaiKhach;

  // Constructor
  HoaDon(this._maHoaDon, this._ngayBan, this._dienThoai, this._soLuongMua,
      this._giaBanThucTe, this._tenKhachHang, this._soDienThoaiKhach) {
    if (!_maHoaDon.startsWith("HD-") || _maHoaDon.isEmpty) {
      throw Exception("Mã hóa đơn không hợp lệ (phải có định dạng 'HD-XXX').");
    }
    if (_ngayBan.isAfter(DateTime.now())) {
      throw Exception("Ngày bán không được vượt quá ngày hiện tại.");
    }
    if (_soLuongMua <= 0 || _soLuongMua > _dienThoai.soLuongTonKho) {
      throw Exception("Số lượng mua không hợp lệ.");
    }
    if (_giaBanThucTe <= 0) {
      throw Exception("Giá bán thực tế phải lớn hơn 0.");
    }
    if (_tenKhachHang.isEmpty || !_soDienThoaiKhach.startsWith("0")) {
      throw Exception("Thông tin khách hàng không hợp lệ.");
    }
    // Cập nhật tồn kho
    _dienThoai.soLuongTonKho = _soLuongMua;
  }

  //Getter
  String get maHoaDon => _maHoaDon;
  String get tenKhachHang => _tenKhachHang;
  String get soDienThoaiKhach => _soDienThoaiKhach;
  // Phương thức tính tổng tiền
  double tinhTongTien() => _giaBanThucTe * _soLuongMua;

  // Phương thức tính lợi nhuận thực tế
  double tinhLoiNhuanThucTe() =>
      (_giaBanThucTe - _dienThoai.giaNhap) * _soLuongMua;

  // Hiển thị thông tin hóa đơn
  void hienThiThongTin() {
    print('Mã hóa đơn: $_maHoaDon');
    print('Ngày bán: $_ngayBan');
    print('Tên khách hàng: $_tenKhachHang');
    print('Số điện thoại khách: $_soDienThoaiKhach');
    print('Tên điện thoại: ${_dienThoai.tenDienThoai}');
    print('Số lượng mua: $_soLuongMua');
    print('Giá bán thực tế: $_giaBanThucTe');
    print('Tổng tiền: ${tinhTongTien()}');
    print('Lợi nhuận thực tế: ${tinhLoiNhuanThucTe()}');
  }
}
