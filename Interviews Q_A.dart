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
}
