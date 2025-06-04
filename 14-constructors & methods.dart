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
//  tear-offs constructor
class Person2 {
  final String name;

  Person2(this.name); // Unnamed constructor
  Person2.guest() : name = 'Guest'; // Named constructor

  @override
  String toString() => 'Person2: $name';
}

//----------- Methods ----------------------------------
/* 
What Are Getters and Setters?
  - Getters: Used to read (get) the value of a property.
  - Setters: Used to write (set) or update the value of a property.
*/
class Rectangle {
  double left, top, width, height;
  Rectangle(this.left, this.top, this.width, this.height);

  // Getter: computed property for 'right'
  double get right => left + width;
  // Setter: adjusts 'left' so that 'right' becomes the value passed
  set right(double value) => left = value - width;
  // Getter: computed property for 'bottom'
  double get bottom => top + height;
  // Setter: adjusts 'top' so that 'bottom' becomes the value passed
  set bottom(double value) => top = value - height;
}


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

  //  tear-offs constructor
  var names = ['Ali', 'Sara', 'Omar'];      // List of names
  // Use tear-off of the unnamed constructor
  var people = names.map(Person2.new).toList();
  for (var person in people) {
    print(person); // Output: Person: Ali, Person: Sara, etc.
  }

//----------- Methods ----------------------------------
  var rect = Rectangle(3, 4, 20, 15);
  print(rect.left);   // Output: 3
  print(rect.right);  // Output: 3 + 20 = 23
  rect.right = 12;     // Now sets: left = 12 - 20 = -8
  print(rect.left);    // Output: -8
}