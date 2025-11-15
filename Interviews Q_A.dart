class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);
}

void main() {
  // --------------- (Shallow Copy & Deep Copy) --------------------------------------
  /* 
  -> What is Shallow Copy and Deep Copy?
    Shallow Copy:
        - A Shallow Copy copies only the top-level structure of an object.
        - If the object contains references to other objects (like lists or maps), 
          the copy shares those references (not duplicates them).
    Deep Copy:
        - A Deep Copy creates a fully independent clone, duplicating all nested objects too.
        
  Use deep copy when you want independent objects, shallow copy is faster but shares memory references.
  */
  Student s1 = Student('Ali', [85, 90]);
  Student shallow = s1; // Shallow copy (same reference)
  Student deep = Student(s1.name, List.from(s1.marks)); // Deep copy

  shallow.marks[0] = 50;
  print(s1.marks); // [50, 90] – changed (same reference)

  deep.marks[0] = 100;
  print(s1.marks); // [50, 90] – not affected (separate copy)

  // --------------- (classes stored in memory {Heap & Stack Concept}) --------------------------------------
  /*
-> How and when classes and their attributes/behaviors are stored in memory?
  -> Stack allocation happens in the function call stack, where each function gets its 
    own memory for variables. In C/C++, heap memory is controlled by programmer as there 
    is no automatic garbage collection.
  -> Stack Allocation
    - Stack allocation refers to the process of assigning memory for local variables 
      and function calls in the call stack. It happens automatically when a function 
      is called and is freed immediately when the function ends. 
    Stack Overflow:
    - If too many function calls exceed the stack's capacity, it results in a stack overflow error.
    Temporary Memory Allocation:
    - Stack memory is freed when a function completes, it is also called temporary memory allocation.
    - e.g:
        int main() {
          // All these variables get memory
          // allocated on stack
          int a;
          int b[10];    // array with 10 size
          int n = 20;
          int c[n];
        }
      
  -> Heap Allocation
    - Heap memory is the part of RAM used to store objects and instance variables (non-static data) 
      that are created at runtime.
    - In Dart (and almost all OOP languages like Java, C++, etc.), 
      when you create an object using the new keyword or by calling a constructor, 
      that object is allocated in the heap.
    - Heap memory is where all objects and instance variables are stored at runtime.
    - Heap memory is allocated dynamically during program execution. 
      Unlike stack memory, heap memory is not freed automatically when a function ends. 
      Instead, it requires manual deallocation (In C/C++) or a garbage collector (in Java or Python) 
      to reclaim unused memory.
      - e.g:
            class Student {
              String name;
              Student(this.name);
            }

            void main() {
              Student s1 = Student("Ali");   // Object stored in Heap
              Student s2 = Student("Sara");  // Another object in Heap

              print(s1.name); // Reference to heap memory
            }
      - What happens in memory:
        - s1 and s2 are references stored in stack memory.
        - The actual Student objects ("Ali", "Sara") are stored in the heap.
        - When s1 or s2 are no longer referenced, garbage collector deletes them from heap.
      - When a class is loaded, its static data and methods are stored.
      - When an object is created, instance fields are stored in heap.

  -> Stack vs Heap
    - Stores
      - Stack:  (Local variables, references)
      - Heap:   (Objects, instance data)
    - Memory size
      - Stack:  (Small)
      - Heap:   (Large)
    - Access speed
      - Stack:  (Fast)
      - Heap:   (Slower)
    - Lifetime
      - Stack:  (Ends when method ends)
      - Heap:   (Until no references exist)
    - Managed by
      - Stack:  (Compiler)
      - Heap:   (Garbage Collector)
    
  -> Memory Layout:
    +---------------------------+
    | Method Area (Code)        | <- methods & static data
    | Heap (Objects)            | <- object data (attributes)
    | Stack                     | <- local variables, references
    +---------------------------+
  */
  // ------------ (Abstract Class {Access data directly or indirectly}) -------------------------------
  /*
  -> Explain Abstract Class and how to access its data directly or indirectly.
    - An abstract class cannot be instantiated directly.
    - It is meant to provide a base class for subclasses to inherit and implement abstract methods.
    - e.g:
        abstract class Animal {
          void makeSound(); // abstract method
          void sleep() => print("Sleeping..."); // concrete method
        }

        class Dog extends Animal {
          @override
          void makeSound() => print("Bark!");
        }

        void main() {
          // Animal a = Animal(); ❌ can't instantiate abstract class
          Dog d = Dog();
          d.makeSound(); // indirect access
          d.sleep();     // inherited method
        }
    - Direct Access: ❌ Not possible (you can’t create an object).
    - ✅ Indirect Access: ✅ Possible through subclasses (inheritance or polymorphism).
  */
  // ------------ (Access non-static data like static data) -------------------------------
  /*
  -> How to access non-static data like static data?
    Normally:
      - Static data is accessed via class name (e.g., ClassName.data).
      - Non-static data belongs to object instances (e.g., obj.data).
    But you can simulate non-static access by:
      - Creating a static reference to an instance, or
      - Using a singleton pattern.
      - e.g:
          class Counter {
            int count = 0;
            static Counter instance = Counter(); // static instance

            void increment() => count++;
          }

          void main() {
            Counter.instance.increment(); // Access non-static data via static reference
            print(Counter.instance.count); // Works like static data
          }

    - You can’t truly access non-static members without an object, but you can indirectly do 
      so through a static instance reference.
  */
  // ------------ (Access Modifiers in Dart) -------------------------------
  /*
  -> Access Modifiers in Dart
    - Dart doesn’t have public, protected, or private keywords like Java,
      only _ (underscore) controls access.
  */
  // ------------ (Class, Object, and Instance {Relationship}) -------------------------------
  /*
  -> Class, Object, and Instance (The Relationship)
    Class:
      - A class is just a blueprint or template.
      - It defines what data (attributes) and behavior (methods) an object will have, 
        but it doesn’t occupy memory for real data until you create an object.
      - e.g:
          class Car {
            String brand;
            int speed;

            void drive() => print("$brand is driving at $speed km/h");
          }
      - Here, Car is only a definition — it describes a car, but doesn’t exist in memory yet.

    Object:
      - An object is a real entity created from a class — it actually exists in memory.
      - It holds its own copies of variables and can call methods.
      - e.g:
          void main() {
            Car car1 = Car(); // car1 is an object
            car1.brand = "Toyota";
            car1.speed = 100;
            car1.drive(); // Toyota is driving at 100 km/h
          }
      - car1 is an object of the class Car.
      - It exists in heap memory, and you can access its attributes/methods.

    Instance: 
      - The term “instance” means a realized copy of a class.
      - Every object is an instance of its class.
      - In other words:
        - All instances are objects, but the term “instance” emphasizes which class it belongs to.
      - e.g:
          Car car1 = Car();  // car1 is an instance of Car
          Car car2 = Car();  // car2 is another instance
      - Both car1 and car2 are objects, but they are different instances (stored at 
        different memory locations).
      - e.g:
          class Student {
            String name;
            Student(this.name);
          }

          void main() {
            Student s1 = Student("Ali");
            Student s2 = Student("Ali");
            Student s3 = s1;

            print(s1 == s2); // ❌ false — different objects (different memory)
            print(s1 == s3); // ✅ true — same reference
          }
    Instance vs Object:
      Class:
        Blueprint or template for creating objects
      Object:
        A real entity (in memory) created from a class
      Instance:
        A specific object that belongs to a class
      e.g:
        class Student {
          String name;
          Student(this.name);
        }

        void main() {
          // Create two objects (instances)
          Student s1 = Student('Ali');
          Student s2 = Student('Sara');

          print(s1); // Instance of 'Student'
          print(s2); // Instance of 'Student'

          // Check if they are the same object
          print(s1 == s2); // false — different objects, different memory
        }

        - Both s1 and s2 are objects of Student.
        - Both are instances of the Student class.
        - But they are different objects (stored in different memory locations).
  */
  // ------------ (Difference b/w final and const) -------------------------------
  /*
  -> Difference between final and const
    Final:
      - A variable that can be set only once (runtime constant).
      - Hold dynamic values
    Const:
      A variable that is compile-time constant (value must be known at compile time).
      - No Hold dynamic values (must be known at compile time)
  */
}
