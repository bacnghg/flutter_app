import 'package:dart_application_3/dart_application_3.dart' as dart_application_3;

void main(List<String> arguments) {
  
  // Cho map key vlaue, in ra số hotline
  var classInformation = {
    "id" : 12,
    "name": "Báo Flutter 1.2",
    "description": "Lớp học lập trình Flutter, hot line: 0349582808"
  };
  String str = classInformation['description'].toString();
  List<String> str2array = str.split(": ");
  print(str2array[1]);
  

//   print('Hello world: ${dart_application_3.calculate()}!');


/// Kieu static
//   String userName = 'bac nguyen hoang';
//   bool isLogined = true;
//   int number = 10;
//   List<int> numberList = [1, 2, 3, 4];
//   Map<String, int> map = {
//     'year': 2022,
//     'birthday': 1990
//   };

//   // Kieu Dynamic: Kiểu linh động, có thể bất kể kiểu dữ liệu nào cũng có thể
//   var test1 = 10;
//   var test2 = 'Flutter';
//   var test3 = true;
//   dynamic test11 = 30;


  // Practice 1: Từ 1-> 1000 in ra các số chẵn mà tổng các số đó không lớn hơn 400
  // int sum = 0;
  // List<int> listEven =[];
  // for (int i=0; i< 1000; i+=2){
  //   sum += i;
  //   if(sum <= 400){
  //       listEven.add(i);
  //     }
  // }
  // print(listEven);


  /// Practice 2: Từ 1-> 10000, viết chương trình đếm số lượng các số chia hết cho 3, số lượng các số chia hết cho 5:
  // List<int> list3 =[];
  // List<int> list5 =[];
  // for (int i=0; i< 10000; i++){
  //     if(i % 3 == 0){
  //         list3.add(i);
  //       }
  //       if(i%5 == 0){
  //         list5.add(i);
  //       }    
  // }
  // int lenList3 = list3.length;
  // int lenList5 = list5.length;
  // print("Tu 1-> 10000 so luong cac so chia het cho 3: $lenList3");
  // print("Tu 1-> 10000 so luong cac so chia het cho 5: $lenList5");


  /// Practice 3: Cho một list: List list5 = [4, 3, 10, 9, 15, 7, 6, 5, 8]; In ra tổng các số chia hết cho 3.
  // List list5 = [4, 3, 10, 9, 15, 7, 6, 5, 8];
  // int sum = 0;
  // for (int i = 0; i < list5.length; i++){
  //   for(int j = i+1; j < list5.length; j++) {
  //     sum = list5[i] + list5[j];
  //     if(sum % 3 == 0){
  //       int p1 = list5[i];
  //       int p2 = list5[j];
  //       print("Các số: $p1 $p2 có tổng là $sum chia hết cho 3" );
  //     }
  //   }
  // }


  /// Practice 4: cho thông tin classInformation, in ra số hotline.
  // var classInformation = {
  //     "id" : 12,
  //     "name": "Báo Flutter 1.2",
  //     "description": "Lớp học lập trình Flutter, hot line: 0349582808"
  //   };
  //   String str = classInformation['description'].toString();
  //   List<String> str2array = str.split(": ");
  //   print(str2array[1]);
}
