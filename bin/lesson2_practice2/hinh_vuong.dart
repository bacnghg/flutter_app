import 'chu_nhat.dart';

class Vuong extends ChuNhat{
  int? canh;
  Vuong({ required this.canh}):super(chieuDai: canh, chieuRong: canh);
  
  @override 
  void getInfor(){
    print("Hình vuông:");
    super.getInfor();
  }
}