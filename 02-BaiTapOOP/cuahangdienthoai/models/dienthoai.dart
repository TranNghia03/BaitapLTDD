class DienThoai {
  late String _maDienThoai;
  late String _tenDienThoai;
  late String _hangSanXuat;
  late double _giaNhap;
  late double _giaBan;
  late int _soLuongTonKho;
  late bool _trangThai;

  // Constructor
  DienThoai(this._maDienThoai, this._tenDienThoai, this._hangSanXuat,
      this._giaNhap, this._giaBan, this._soLuongTonKho, this._trangThai) {
    // Validation
    if (!_maDienThoai.startsWith("DT-") || _maDienThoai.isEmpty) {
      throw Exception(
          "Mã điện thoại không hợp lệ (phải có định dạng 'DT-XXX').");
    }
    if (_tenDienThoai.isEmpty || _hangSanXuat.isEmpty) {
      throw Exception("Tên điện thoại và hãng sản xuất không được rỗng.");
    }
    if (_giaNhap <= 0 || _giaBan <= _giaNhap) {
      throw Exception("Giá nhập phải > 0 và giá bán phải lớn hơn giá nhập.");
    }
    if (_soLuongTonKho < 0) {
      throw Exception("Số lượng tồn kho không thể âm.");
    }
  }

  // Getter và Setter
  String get maDienThoai => _maDienThoai;
  String get tenDienThoai => _tenDienThoai;
  double get loiNhuanDuKien => _giaBan - _giaNhap;
  int get soLuongTonKho => _soLuongTonKho;
  double get giaNhap => _giaNhap;
  double get giaBan => _giaBan;

  set giaBan(double value) {
    if (value <= _giaNhap) {
      throw Exception("Giá bán phải lớn hơn giá nhập.");
    }
    _giaBan = value;
  }

  set soLuongTonKho(int value) {
    if (value < 0) {
      throw Exception("Số lượng tồn kho không thể âm.");
    }
    _soLuongTonKho = value;
  }

  // Phương thức kiểm tra trạng thái kinh doanh
  bool coTheBan() => _soLuongTonKho > 0 && _trangThai;

  // Phương thức hiển thị thông tin
  void hienThiThongTin() {
    print('Mã điện thoại: $_maDienThoai');
    print('Tên điện thoại: $_tenDienThoai');
    print('Hãng sản xuất: $_hangSanXuat');
    print('Giá nhập: $_giaNhap');
    print('Giá bán: $_giaBan');
    print('Số lượng tồn kho: $_soLuongTonKho');
    print('Trạng thái: ${_trangThai ? "Còn kinh doanh" : "Ngừng kinh doanh"}');
    print('Lợi nhuận dự kiến: $loiNhuanDuKien');
  }
}
