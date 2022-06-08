class HocSinh{
  // Thuoc tinh
  int? id;
  String? name;
  String? _birth;
  String? _mobile;
  int? diemToan;
  int? diemVan;
  int? diemAnh;
  double? diemTB;

  HocSinh({required this.id,required this.name, this.diemToan, this.diemAnh, this.diemVan});

// getset
  String getBirth(){
    return this._birth!;
  }
  void setBirth({required String birth}){
    this._birth = birth;
  }

  String getMobile(){
    return this._mobile!;
  }
  void setMobile({required String mobile}){
    this._mobile = mobile;
  }

  // 
  void getInfor(){
    print("Họ và tên: ${this.name} \nMã số học sinh:${this.id}");
  }

  void getDiemTB(){
    diemTB = (this.diemToan! + this.diemAnh! + this.diemVan!)/3;
    print("Điểm trung bình của học sinh là: ${diemTB}!");
  }

  void xepLoai(){
    if(diemTB! >= 9){
      print("Hoc sinh xếp hạng xuất sắc");
    } else if(diemTB! < 9 && diemTB! >=7){
      print("Hoc sinh xếp hạng khá");
    } else if(diemTB! < 7 && diemTB! >= 5){
      print("Học sinh xếp hạng trung bình");
    } else {
      print("Học sinh xếp hạng yếu");
    }

  }
}