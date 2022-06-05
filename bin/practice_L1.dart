import 'package:dart_application_3/dart_application_3.dart' as dart_application_3;

void main(List<String> arguments) {

  practice1();
  practice2();
  practice3();
  practice4();

}

void practice1(){
/// Practice 1: Từ 1-> 1000 in ra các số chẵn mà tổng các số đó không lớn hơn 400
  int sum1to1000 = 0;
  List<int> listEven =[];
  for (int i=0; i< 1000; i+=2){
    sum1to1000 += i;
    if(sum1to1000 <= 400){
        listEven.add(i);
      }
  }
  print(listEven);
}

/// Practice 2: Từ 1-> 10000, viết chương trình đếm số lượng các số chia hết cho 3, số lượng các số chia hết cho 5:
void practice2(){
  List<int> list3 =[];
  List<int> list5 =[];
  for (int i=0; i< 10000; i++){
      if(i % 3 == 0){
          list3.add(i);
        }
        if(i%5 == 0){
          list5.add(i);
        }    
  }
  int lenList3 = list3.length;
  int lenList5 = list5.length;
  print("Tu 1-> 10000 so luong cac so chia het cho 3: $lenList3");
  print("Tu 1-> 10000 so luong cac so chia het cho 5: $lenList5");

}

/// Practice 3: Cho một list: List list5 = [4, 3, 10, 9, 15, 7, 6, 5, 8]; In ra tổng các số chia hết cho 3.
void practice3(){
  List list5 = [4, 3, 10, 9, 15, 7, 6, 5, 8];
  int sumSoChiaHetCho3 = 0;
  int soChiahetCho3 = 0;
  for (int i = 0; i < list5.length; i++){
    if(list5[i] % 3 == 0){
        soChiahetCho3 = list5[i];
        sumSoChiaHetCho3 += soChiahetCho3;
    }
  }
  print(sumSoChiaHetCho3);
}

/// Practice 4: cho thông tin classInformation, in ra số hotline.
void practice4(){
  var classInformation = {
      "id" : 12,
      "name": "Báo Flutter 1.2",
      "description": "Lớp học lập trình Flutter, hot line: 0349582808"
    };
    String strDescription = classInformation['description'].toString();
    List<String> str2array = strDescription.split(": ");
    print(str2array[1]);
}

  