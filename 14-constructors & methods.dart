import 'dart:math';
//----------- Constructors ----------------------------------
//  Initializer List in
class SquareRoot {
  final double x;
  final double SquareRootofx;

  SquareRoot(double x):   //  Initializer List in
    this.x = x,
    this.SquareRootofx = sqrt(x);
}
// ---------------------------------------------
// Redirecting Constructor
class Point {
  double x, y;

  // Main constructor
  Point(this.x, this.y);

  // Redirecting constructor
  Point.alongXAxis(double x) : this(x, 0);   //this call the main constructor
}
// ---------------------------------------------
// Super Constructor Call
class Person {
  final String name;
  Person(this.name);
}

class Employee extends Person {
  final int id;

  // Calls Person's constructor using super
  Employee(String name, this.id) : super(name);
}
// ---------------------------------------------
// Super Parameters
class Vector2D {
  final double x, y;
  Vector2D(this.x, this.y);
}

class Vector3D extends Vector2D {
  final double z;

  // Super parameters
  Vector3D(super.x, super.y, this.z);
}
// -----------------------------------------------


void main(){
//----------- Constructors ----------------------------------
  //  Initializer List in
  var p = SquareRoot(100);
  print(p.x);
  print(p.SquareRootofx);

  // Redirecting Constructor
  var obj = Point.alongXAxis(5);
  print(obj.x);
  print(obj.y);

  // Super Constructor Call
  var obj1 = Employee("Umer", 92);
  print(obj1.id);
  print(obj1.name);

  // Super Parameters
  var obj2 = Vector3D(12.5, 11.5, 10.5);
  print(obj2.x);
  print(obj2.y);
  print(obj2.z);

}