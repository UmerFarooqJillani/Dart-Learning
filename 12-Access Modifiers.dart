/*
Dart is an object-oriented language. It supports object-oriented programming 
features like classes, interfaces, etc. A class in terms of OOP is a blueprint 
for creating objects. A class encapsulates data for the object. 
Dart gives built-in support for this concept called class.
-----------------------------------
Dart Access Modifiers:
-----------------------------------
--> Public Members
      By default, everything in Dart is public (unless explicitly marked private with _).
    -------------
      class Car {
        String engine = "V8"; // public field

        void start() {
          print("Engine started: $engine");
        }
      }
    --------------
      void main() {
        Car car = Car();
        print(car.engine); // ✅ allowed
        car.start();       // ✅ allowed
      }
--> Private Members (_ underscore)
      A member is private to its library (usually a file) if its name starts with an underscore _.
    ---------------
        class Car {
          String _engine = "Secret V12"; // private

          void _start() {
            print("Private engine started");
          }

          void publicStart() {
            _start(); // allowed within the same file
          }
        }
    -------------------------
        // another_file.dart
        import 'car.dart';

        void main() {
          var car = Car();
          print(car._engine); // ❌ Error: '_engine' is private
          car._start();       // ❌ Error
        }
--> Protected Members
      Dart does NOT support protected access modifier.
*/
void main(){
  /* 
  --> Instance Vs Object ??
      Every object is an instance of a class.
      Object?
        - An object is a concrete entity created from a class.
        - It represents data + behavior (i.e., fields + methods).
        - It resides in memory after instantiation.

      Instance?
        - An instance refers to a specific realization of a class.
        - It emphasizes "a member of a class" — it belongs to the class.
        - It's a technical term used more in definitions and memory context.
       
      In Dart:
        class Car {
          String color = 'red';
          void drive() => print("Driving $color car");
        }
        void main() {
          Car myCar = Car();  // <-- this is an object
        }

      - “myCar is an object of the Car class.”
      - “myCar is an instance of the Car class.”
  */
}