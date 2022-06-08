import 'lesson2.dart';

void main (){
  HocSinh hs1 = HocSinh(id: 100, name: "bắc ng", diemToan: 3, diemAnh: 9, diemVan: 8);
  hs1.setBirth(birth: '15/9/2000');
  hs1.setMobile(mobile: '098123456789');
  hs1.getInfor();
  print("Ngày sinh: "+ hs1.getBirth());
  print("Số điện thoại: "+ hs1.getMobile());
  hs1.getDiemTB();
  hs1.xepLoai();
}


