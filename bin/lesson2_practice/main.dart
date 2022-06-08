import 'lesson2_practice1/hoc_sinh.dart';
import 'lesson2_practice2/chu_nhat.dart';
import 'lesson2_practice2/hinh_vuong.dart';
import 'lesson2_practice3/person.dart';

void main (){

  /// Practice 2.1:
  HocSinh hs1 = HocSinh(id: 100, name: "bắc ng", diemToan: 3, diemAnh: 9, diemVan: 8);
  hs1.setBirth(birth: '15/9/2000');
  hs1.setMobile(mobile: '098123456789');
  hs1.getInfor();
  print("Ngày sinh: "+ hs1.getBirth());
  print("Số điện thoại: "+ hs1.getMobile());
  hs1.getDiemTB();
  hs1.xepLoai();

  ///Practice 2.2:
  /// Đối tượng hình chữ nhật và in ra thông tin
  // ChuNhat cn1 = ChuNhat(chieuRong: 10, chieuDai: 20);
  // cn1.getInfor();

  // Đối tượng hình vuông và in ra thông tin
  // Vuong v1 = Vuong(canh: 10);
  // v1.getInfor();


  /// Practice 3: Abstract
  // Person p1 = Person(id: '10', name: "chu chi nguoc");
  // p1.setBirth(birth: 1992);
  // p1.getAge();
  // p1.getInfor();
}


