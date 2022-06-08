// Lesson 2 06/06/2022
// Đối tượng: User
//1. Thuộc tính: đặc điểm của đối tượng
// 2, Hành vi của đối tượng
class User{
  // Class chứa biến, hàm, có các thuộc tính

  /// 1. Thuộc tính: các biến
  String? name;
  String? address;
  int? birthdayYear;

  /// 2. Phương thức: các hàm
  //2.1 hàm khởi tạo: Là hàm với các giá trị mặc định của đối tượng thuộc class User
  User({required String name, required String address, required int birthdayYear});

  // hàm
  int getAge(){
    return (DateTime.now().year - this.birthdayYear!);
  }
  
  String getName(){
    return this.name!;
  }
}
