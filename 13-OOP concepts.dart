import 'dart:math'; // Required for sqrt() - Uses the sqrt() function from the dart:math library

//------------- Using Class Members ----------------------------------------
class Point {
  double x, y;

  Point(this.x, this.y);
  double distanceTo(Point other) {       // "a parameter of type Point named other."
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}
//------------- Constructors in Dart ----------------------------------------
class Person {
  String name;
  // Default Constructor
  Person(this.name); // Default/parameterized constructor
  // Named Constructor
  Person.my_name() : name = 'Anonymous';

  void display(){
    print(this.name);
    return;
  }
}

class ImmutablePoint {
  final int x, y;
// Const Constructor
  const ImmutablePoint(this.x, this.y);
}
// ------------- The 'this' Keyword ----------------------------------------
// Refers to the current object’s instance.
class Car {
  String? model;
  Car(String model) {
    this.model = model; // `this` clarify between parameter and field(attribute)
  }
  void display(){
    print(this.model);
    return;
  }
}
// ------------- Inheritance & Method Overriding ----------------------------------------
class Parent {
  void show() => print("Parent");
}
class Child extends Parent {
  @override
  void show() => print("Child");
}
// ------------- Static Members ----------------------------------------
class MathUtils {
  static const pi = 3.14;     //Shared data

  static int square(int n) => n * n;
}
// ------------- Abstraction ----------------------------------------
// Hides internal details and exposes only necessary parts.
// Done via abstract classes.
abstract class Vehicle {
  void move();
}
class Bike extends Vehicle {
  @override
  void move() => print("Bike is moving");
}
// ------------- Polymorphism ----------------------------------------
// One interface, many implementations.
// Abstract base class or interface
abstract class Vehicles {
  void move(); // Abstract method
}
// Subclass 1
class Bikes extends Vehicles {
  @override
  void move() => print('Bike is moving...');
}
// Subclass 2
class Cars extends Vehicles {
  @override
  void move() => print('Car is driving...');
}
// Polymorphic function
void start(Vehicles vehicle) {
  vehicle.move(); // Calls move() on whatever subclass was passed in
}
// ------------- The super Keyword ----------------------------------------
// Used to refer to parent class members.
class Animal {
  void sound() => print("Animal sound");
}

class Dog extends Animal {
  @override
  void sound() {
    super.sound(); // Calls Animal's sound
    print("Dog barks");
  }
}
//---------------------------- Main Fnc -----------------------------------------------------------------
void main() {
//------------- Using Class Members ----------------------------------------
  var p = Point(2, 3);
  print(p.y); // Access member
  var distance = p.distanceTo(Point(4, 4)); // Call method
  print(distance);
//            or
  var p1 = Point(1, 2);
  var p2 = Point(4, 6);
  print(p1.distanceTo(p2)); // Output: 5.0

// ------------- Constructors in Dart ----------------------------------------
  // Default Constructor (Unnamed Constructor)
  var obj = Person('Alice');
  print(obj.name); // Output: Alice

  // Named Constructor
  var obj2 = Person('Bob');
  var obj3 = Person.my_name();
  print(obj2.name); // Output: Bob
  print(obj3.name); // Output: Anonymous

  //Const Constructor
  const point1 = ImmutablePoint(2, 3);
  const point2 = ImmutablePoint(2, 3);

  print(identical(point1, point2)); // true, same instance

  // The 'identical()' function in Dart is used to check if two variables 
  // refer to the exact same object in memory.
  var a = const ImmutablePoint(1, 1);
  var b = const ImmutablePoint(1, 1);
  var c = ImmutablePoint(1, 1); // non-const

  print(a == b);            // true, because values are equal
  print(identical(a, b));   // true, same canonical instance (both const)
  print(identical(a, c));   // false, different memory instances

// ------------- Using the new Keyword (Optional) ----------------------------------------
  // Avoid using new.
  // Dart’s modern style encourages shorter, cleaner code without new.
  var pp = Point(3, 5);       //  ✅ DO (Preferred)
  var ss = new Point(3, 6);     // ❌ DON’T

// ------------- The 'this' Keyword ----------------------------------------
  var obje = Car("Umer");
  obje.display();
// ------------- Inheritance & Method Overriding ----------------------------------------
  // Types of Inheritance
  // Single Inheritance – Only one direct superclass.
  // Mixin Inheritance – Multiple behavior reuse (not multiple inheritance).

// ------------- Static Members ----------------------------------------
/*
  In Dart, static means the member belongs to the class itself, not to instances of the class.
    There are two kinds of static members:
      - Static Variables – Shared across all instances.
      - Static Methods – Can be called on the class without creating an object.
*/
  print(MathUtils.pi);
  print(MathUtils.square(4));
  print(MathUtils.square(2));

// ------------- Abstraction ----------------------------------------
  var obj4 = Bike();
  obj4.move();

// ------------- Polymorphism ----------------------------------------
/*
  - Vehicle is an abstract class that defines a common method move().
  - Bike and Car override the move() method with their own implementation.
  - The function start() takes a Vehicle parameter, but due to polymorphism, 
    when you pass in a Bike or Car, their specific move() implementation is called. 
*/
  start(Bikes()); // Output: Bike is moving...
  start(Cars());  // Output: Car is driving...

// ------------- The super Keyword ----------------------------------------
  var oob  = Dog();
  oob.sound(); // Animal sound
               // Dog barks

}
