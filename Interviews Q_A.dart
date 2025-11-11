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
}
