/// Viết 1 chương trình giới thiệu bản thân ấp úng, tức là sau 3s hiển thị ra tên, 
/// sau 5s hiển thị ra tuổi, sau 2s hiển thị ra quê quán

void main() async{
  print(await showInfor(yourInfo: "Tên: bac nh", timeShow: 3));

  print(await showInfor(yourInfo: "Tuổi: 20", timeShow: 5));

  print(await showInfor(yourInfo: "Hà Tĩnh", timeShow: 2));

}

Future<String> showInfor({required String yourInfo, required int timeShow}){
  return Future.delayed(Duration(seconds: timeShow), (){
    return yourInfo;
  }
  );
}

/// Viết 1 Stream số từ 1-100, cứ sau 3s đẩy số vào Stream 1 lần 
/// và in ra những số chia hết cho 3