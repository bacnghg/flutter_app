
void main(List<String> arguments) async{
  /// Không dùng then
  // var num = await makeSumLate(number1: 5, number2: 6);
  // print("So lấy về được là: ${num}");
  // print("Chương trình kết thúc");

  /// Dùng then:
  makeSumLate(number1: 5, number2: 6).then((value) => {
    
  // print("So lấy về được là: ${num}")
  });
  print("Chương trình kết thúc");


  // test stream

  // Lấy cách 1
  // Stream<int> numberStream = makeNumberStream();
  // readStream1(numberStream: numberStream);
  // Lấy cách 2
  // Stream<int> numberStream2 = makeSecondStream(maxNumber: 6);
  // readStream1(numberStream: numberStream2);

  // Lấy cách 1
  Stream<int> numberStream = makeNumberStream();
  readStream2(numberStream: numberStream);
  // Lấy cách 2
  // Stream<int> numberStream2 = makeSecondStream(maxNumber: 6);
  // readStream2(numberStream: numberStream2);

}

/// Dữ liệu dạng Future: hiểu nôm na là dạng dữ liệu kiểu tương lai: Future<int>
/// Future<T> => T; T = await Future<T>;
/// Nghĩa là: sau 1 khoảng thời gian xử lý dữ liệu Future<T> sẽ trả về kiểu T (thông qua từ khoá await)
/// Dữ liệu dạng Future<T> chỉ là 1 giá trị

Future<int> makeSumLate({required int number1, required int number2}){
  return Future.delayed(Duration(seconds: 2), (){
    return number1 + number2;
  }
  );
}

/// Lập trình bất đồng bộ là hoạt động cho phép chương trình thực hiện tiếp các công việc mà trong khi chờ các công việc khác vẫn trong quá trình hoàn thành.
/// Giúp cho ứng dụng hoạt động mượt hơn, nhanh hơn thay vì chờ quá lâu chạy từng task chạy một.
/// Ví dụ: Khi ứng dụng vừa build giao diện vừa load dữ liệu từ server, chứ không chờ đợi làm cái này rồi đến cái kia (tuần tự)
/// Lập trình bất đồng bộ sử dụng khi: Lấy dữ liệu từ Server, Firestore, api, DB, đọc nội dung từ file
/// Dấu hiệu nhận biết khi đọc code: Future, async-await, then, stream

/// 3 Cách triển khai bất đồng bộ:
/// Cách 1: Future, async, await.
/// Dữ liệu trả về sau 1 thời gian: đó là dạng Future<T>. Dùng dữ liệu dạng thuần (int) thì: async - await

/// Cách 2: ...then(...)
/// Bất cứ kiểu dữ liệu Future<T> đều có thể dùng then
/// Dùng then, khi chạy thì sẽ chạy lệnh then, đồng thời sẽ chạy tiếp các hàm tiếp theo, 
/// bao giờ lệnh then chạy xong thì sẽ thực hiện (ko quan tâm phải chờ chạy xong mới chạy cái tiếp theo) - xem ví dụ trên.
/// Cấu trúc: (dữ liệu dạng Future<T>).then((value) {})

/// Cách 3: stream
/// Dữ liệu dạng Stream: Là dạng dữ liệu dòng, bao gồm nhiều dữ liệu dạng bất đồng bộ (Future<>)
/// Tạo ra Stream:
/// Có 2 cách tạo ra Stream
/// Cách 1:
/// tạo ra1 stream số
Stream<int> makeNumberStream(){
  return Stream<int>.periodic(Duration(seconds: 2), makeNumberUp);

}

int makeNumberUp(int value) => value + 1;

// Cách 2: dùng cặp: yield - async*
Stream<int> makeSecondStream({required int maxNumber}) async*{
  for(int number = 1; number <= maxNumber; number++){
    yield number;
  }
}
/// => từ đây ta có thể phân biệt được cặp: async-await (dùng cho kiểu Future<T> - kiểu dữ liệu đơn)
/// còn async* - yield: dùng cho kiểu dữ liệu dạng Stream<T> - kiểu dữ liệu ống nước - nhiều Future<T>

/// Cách đọc dữ liệu từ Stream
/// Có 2 cách:
/// Cách 1: sử dụng hàm listen trong dart
void readStream1({required Stream<int> numberStream}){
  numberStream.listen((number){
          print("So lấy về được là: ${number}");
  });
}


/// Cách 2:
void readStream2({required Stream<int> numberStream}) async {
  await for(int number in numberStream){
      print("So lấy về được là: ${number}");

  }
}