class Person {
  String name = "Default";
}
void main(){
  /*
  assert()
    assert() function in Dart is used for debugging. It helps you catch bugs early 
    by checking whether a condition is true at runtime during development. If the 
    condition is false, Dart throws an AssertionError
    Syntax:
      assert(condition);
      assert(condition, 'Custom error message');
    Key Points:
    - Only runs in debug mode (not in production).
    - Throws an error if the condition is false.
    - Used to validate assumptions in your code.
    - Dart ignores assertions in production mode.
  */
// ----------------------------------------------------------
  // Arithmetic operators
  assert(2 + 3 == 3, "You calculation is false");
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(5 ~/ 2 == 2); // Result is an int
  assert(5 % 2 == 1); // Remainder
// ----------------------------------------------------------
  //  prefix and postfix increment and decrement operators.
  int a;
  int b;
  a = 0;
  b = ++a; // Increment a before b gets its value.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a after b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a after b gets its value.
  assert(a != b); // -1 != 0
// ----------------------------------------------------------
  // Equality and relational operators
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);
// ----------------------------------------------------------
  // Type test operators

  var name = "Alice";
  // The 'is' operator checks whether an object is of a given type.
  if (name is String) {
    print("Name is a string");
  }

  if (name is! int) {
    print("Name is not a int");
  }
  //-------------------------
  dynamic p = Person();
  // The 'as' operator is used to explicitly cast an object to another type — only 
  // if you're sure it's of that type. 
  // Syntax: ((object as Type).propertyOrMethod)
  (p as Person).name = "Bob"; // Typecast to Person, then access name
  print((p as Person).name);

//-------------------------------------------------------------------
  // Conditional expressions || ternary operator
  var isPublic = true;
  var visibility = isPublic ? 'public' : 'private';
  print(visibility);
//-------------------------------------------------------------------
  // '?' is called the nullability operator
  /*
  It makes the type nullable — meaning the variable can be null.
    int	 ---> Must be a number, never null
    int? ---> Can be a number or null
    List<int> ---> Must be a list of ints, never null
    List<int>? ---> Can be a list of ints or null
    List<int?> ---> A list of items where each item can be null
  */
//-------------------------------------------------------------------
  /* Spread Operator (... and ...?) 
      The spread operator unpacks a list (or set/map) and adds its items to another collection.
  */
  var numbers1 = [1, 2, 3];
  var numbers2 = [0, 1, 2, 3, 4]; // You had to copy manually
  var numbers3 = [0, ...numbers1, 4]; // Easy!
  print(numbers1);
  print(numbers2);
  print(numbers3);
//-------------
  // Null-aware spread:
  // What if the list is null?

  // If numbers1 might be null:
  List<int>? num = null;
  print(num);
  var num2 = [0, ...?num, 4]; // ✅ Safe!
  print(num2);
  // If you just use ...numbers1, it will crash. But ...?numbers1 means:
  // "If it’s not null, add it. Otherwise, skip."
  List<int>? num3 = [1, 2, 3];
  print(num3);
  var num4 = [0, ...?num3, 4]; // ✅ Safe!
  print(num4);
//-------------------------------------------------------------------
/*
  // Cascade Notation (.. and ?..)
  // Use .. to perform multiple operations on the same object without repeating its name.
    var paint = Paint()
    ..color = Colors.black
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 5.0;
  // This means:                             IF You don't understand, kindly skip this and learn later.
    var paint = Paint();
    paint.color = Colors.black;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 5.0;
//------------------------
  // Null-aware Cascade (?..)
    document.querySelector('#confirm')
      ?..textContent = 'Confirm'
      ..classList.add('important')
      ..scrollIntoView();
  // This runs only if querySelector() doesn't return null. Equivalent to:
    final button = document.querySelector('#confirm');
    button?.textContent = 'Confirm';
    button?.classList.add('important');
    button?.scrollIntoView();
  */
//-------------------------------------------------------------------
  // Other Operators Summary
  /*
    () --> Function application -->	foo() calls a function
    [] --> Subscript access -->	list[0] accesses the first item
    ?[] --> Null-aware subscript -->	list?[0] safe access if list isn’t null
    . -->	Member access -->	object.property
    ?. --> Null-aware member access -->	object?.property (avoids crash if object is null)
    ! -->	Non-null assertion --> foo!.bar forces non-null (crashes if null)
    => --> One-line expression --> 
                                int square(int x) => x * x;
                                            or
                                String greet(String name) => 'Hello, $name!';
                              // Same as:
                                int squareAlt(int x) {
                                  return x * x;
                                }
                              // inside classes
                                class Circle {
                                  final double radius;
                                  Circle(this.radius);
                                  double get area => 3.14 * radius * radius;
                                }
                              // void function
                                void printName(String name) => print('Name: $name');
                              // Note:
                                Don’t use => when:
                                  If your function has multiple statements 
                                  (like if, for, or try blocks), you must use curly braces {}
    {} --> Multiple lines / logic required
  */
}