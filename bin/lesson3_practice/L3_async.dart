
void main() {
  // showInfor();
  // soChiaHetCho3();
}

/// Viết 1 chương trình giới thiệu bản thân ấp úng, tức là sau 3s hiển thị ra tên, 
/// sau 5s hiển thị ra tuổi, sau 2s hiển thị ra quê quán

showInfor()async {
  print(await getInfor(yourInfo: "Tên: bac nh", timeShow: 3));
  print(await getInfor(yourInfo: "Tuổi: 20", timeShow: 5));
  print(await getInfor(yourInfo: "Quê quán: Hà Tĩnh", timeShow: 2));
}

Future<String> getInfor({required String yourInfo, required int timeShow}){
  return Future.delayed(Duration(seconds: timeShow), (){
    return yourInfo;
  }
  );
}

/// Viết 1 Stream số từ 1-100, cứ sau 3s đẩy số vào Stream 1 lần 
/// và in ra những số chia hết cho 3
dynamic makeNumber(int n) {
  if (n < 100){
    return n;
  } 
}

soChiaHetCho3() async {
  Stream<dynamic> stream = Stream<dynamic>.periodic(Duration(seconds: 3), makeNumber);
  stream.listen((n) {
    if (n % 3 == 0){
      print(n);
    } 
  });
}
