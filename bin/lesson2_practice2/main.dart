import '../lesson2_practice/hoc_sinh.dart';
import '../lesson2_practice2/chu_nhat.dart';
import '../lesson2_practice2/hinh_vuong.dart';

void main (){

  /// Practice 2.1:
  // HocSinh hs1 = HocSinh(id: 100, name: "bắc ng", diemToan: 3, diemAnh: 9, diemVan: 8);
  // hs1.setBirth(birth: '15/9/2000');
  // hs1.setMobile(mobile: '098123456789');
  // hs1.getInfor();
  // print("Ngày sinh: "+ hs1.getBirth());
  // print("Số điện thoại: "+ hs1.getMobile());
  // hs1.getDiemTB();
  // hs1.xepLoai();

  ///Practice 2.2:
  ChuNhat cn1 = ChuNhat(chieuRong: 10, chieuDai: 20);
  cn1.getInfor();

  Vuong v1 = Vuong(canh: 10);
  v1.getInfor();
}


