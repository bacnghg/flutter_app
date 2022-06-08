import 'person_sample.dart';

class Person extends PersonSample{
  String? id;
  String? name;
  int? _birthYear;

  Person({required String this.id, required String this.name});

  void setBirth({required int birth}){
    this._birthYear = birth;
  }

  int getBirth(){
    return this._birthYear!;
  }
  
  @override
  int getAge() {
    if(_birthYear !=null){
      return DateTime.now().year - this._birthYear!;
    } else {
      return 0;
    }
  }
  
  @override
  void getInfor() {
    print("Tên: ${this.name}, id: ${this.id}, tuổi: " + this.getAge().toString());

  }
}