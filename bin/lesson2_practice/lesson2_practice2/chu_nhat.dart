class ChuNhat{
  int? chieuRong;
  int? chieuDai;

  ChuNhat({required this.chieuRong, required this.chieuDai});

  int tinhChuVi(){
    return 2*(this.chieuRong! + this.chieuDai!);
  }
  
  int tinhDienTich(){
    return this.chieuDai! * this.chieuRong!;
  }

  void getInfor(){
    print("Hình chữ nhật có chiều rộng: ${this.chieuRong} và chiều dài: ${this.chieuDai}, thì Chu vi: " + this.tinhChuVi().toString()  + " và  Diện tích: "  + this.tinhDienTich().toString());
  }
}