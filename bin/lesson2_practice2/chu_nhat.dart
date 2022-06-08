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
    print("Chiều rộng: ${this.chieuRong} và chiều dài: ${this.chieuDai}, Thì Diện tích:"  + this.tinhDienTich().toString() + " và Chu vi: " + this.tinhChuVi().toString() );
  }
}