import 'chu_nhat.dart';

class Vuong extends ChuNhat{
  int? canh;
  Vuong({ required this.canh}):super(chieuDai: canh, chieuRong: canh);
  
  @override 
  void getInfor(){
    print("Hình vuông có độ dài cạnh: ${this.canh} Thì Chu vi: " + super.tinhChuVi().toString() + ", Diện tích: " + super.tinhDienTich().toString());
  }
}