  /*
  --> What is an Interface in Dart?
      - An interface defines a contract: a list of method signatures and properties that a class must implement.
      - Dart doesn’t have a special interface keyword like Java or TypeScript.
      - Every class in Dart is implicitly an interface.
      - To implement an interface, a class uses the implements keyword.
  --> Why Use Interfaces?
      - Polymorphism
      - Abstraction
      - Multiple Inheritance
  --> Overview of Keywords
      extends:    - Inherit from a base class 
                  - Inherits Code 
                  - Override Methods Only if needed
                  - only single Inheritance

      implements: - Use a class as an interface
                  - No Inherits Code 
                  - Must Override all Methods
                  - Multiple Inheritance

      with:       - Add behavior from one or more 'mixins'
                  - Inherits Code
                  - Override Methods (Optional)
                  - Multiple Inheritance
  */
//---------------------------------------------------------------------
// extends – Inheriting from a Base Class
// class Animal {
//   void breathe() {
//     print("Animal is breathing");
//   }
// }
// class Dog extends Animal {
//   void bark() {
//     print("Dog is barking");
//   }
// }
// void main() {
//   Dog d = Dog();
//   d.breathe(); // Inherited method
//   d.bark();    // Own method
// }
//---------------------------------------------------------------------
// implements – Using a Class as an Interface
// class Animal {
//   void breathe() {
//     print("Animal is breathing");
//   }
// }
// class Fish implements Animal {
//   @override
//   void breathe() {
//     print("Fish breathes through gills");
//   }
// }
// void main() {
//   Fish f = Fish();
//   f.breathe(); // Custom implementation
// }
//---------------------------------------------------------------------
// with – Using Mixins for Code Reuse
/*
  --> What is a Mixin in Dart?
      A mixin is a way to reuse code across multiple classes without using inheritance. 
      It lets you "mix in" methods and properties from another class into your own class.
      - Think of a mixin like a "plug-in" — you plug it into your class to give it extra abilities.
  --> When to Use a Mixin?
      Use a mixin when:
      - You want to reuse method code across classes.
      - You don’t need inheritance or shared state.
      - You want composition over inheritance (better software design).
*/
mixin CanRun {
  void run() => print("Running fast!");
}
mixin CanSwim {
  void swim() => print("Swimming smoothly!");
}
class Dolphin with CanSwim, CanRun {}
void main() {
  Dolphin d = Dolphin();
  d.run();
  d.swim();
}

