void main() {
  Person obj = Person(name: "Umer", age: 20);
  print("Name : " + obj.name);
  print("Age : ${obj.age}");

  obj = obj.copyWith(name: "Umer Farooq Jillani");
  print("Name : " + obj.name);
  print("Age : ${obj.age}");
  
  Person obj2 = Person(name: "Abu Bakar", age: 22);
  print("Name : " + obj2.name);
  print("Age : ${obj2.age}");

}

class Person {
  final String name;
  final int age;
  Person({required this.name, required this.age});

  Person copyWith({String? name, int? age}){
    return Person(name: name ?? this.name, age: age ?? this.age);
  }
}
