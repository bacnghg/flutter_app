void main() {
  checkTuoi();
}

// bài tập try - catch
void checkTuoi(){
  /// List tuổi tác
  /// List: Kiểm tra các phần tử, nếu phần tử không hợp lệ thì đưa ra Exception
  ///  thông Tuổi hợp kêh luôn dương, và không thể là số thập phân
  var ageList = [1, 2, 3, 8,4 ,20, 25, 26, -30, 15.5, 40, 65];
  for(var i = 0; i < ageList.length; i++){
    try{
      if(ageList[i] < 0 || ageList[i].runtimeType != int){
        
      print("Phần tử không hợp lệ: " + ageList[i].toString() + ", thứ tự thứ: ${i}");
      }
    }catch(e){
      print(e);
    }
    
  }
}