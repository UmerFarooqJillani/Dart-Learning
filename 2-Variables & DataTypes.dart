late String description;

String readThermometer() {
  print('Reading thermometer...');
  return '30°C';
}

late String temperature = readThermometer(); // Not called yet

void main(){
  /*
  Data Types in Dart
    int --> Whole numbers (e.g., 10)
    double --> Decimal numbers (e.g., 3.14)
    String --> Text values
    bool --> Boolean values (true or false)
    List --> Ordered collection (similar to arrays)
    Map -->	Key-value pairs
    dynamic	Type --> not known until runtime
  */
// ----------------------------------------------------------------
  /*
  Three types of variables in Flutter:
    1- Local -->	Inside function/block -->	Only within that function	Directly
    2- Global -->	Outside functions/classes -->	Entire file or imported files	Directly or import
    3- Instance -->	Inside class (outside methods) --> Accessible via object instance(object.variable)
  */
// ----------------------------------------------------------------
  /*
  Variable Declaration - Type Inference (Dynamic Type)
    Dart automatically infers the type as String because the value is a string.
    var is used when you want the compiler to figure out the type.
    Behind the Scenes
      The variable name holds a reference to a String object containing the value "Bob".
  */
  var name = 'Alice';
  var age = 25;
  var isStudent = true;

  print(name);       // Output: Alice
  print(age);        // Output: 25
  print(isStudent);  // Output: true
// ----------------------------------------------------------------
  // Explicit Type Declaration
// ----------------------------------------------------------------
  /*
  Object can store any type of value (like numbers, strings, etc.).
    Use this when you need generalized type handling.
    Object can store any data type, but Dart won't allow direct operations 
    like .length unless you cast it.
  */
  Object data = 'Hello';
  print(data);   // Output: Hello
  data = 123;    
  print(data);   // Output: 123
  data = true;   
  print(data);   // Output: true
// ----------
  /*
  Static Variable
    You declare greeting specifically as a String
    Here, you tell Dart: “This variable will only contain a String.”
    Good for clarity, especially in large apps or teams.
  */
  String greeting = 'Welcome to Dart!';
  greeting = "Welcom Umer";
  print(greeting);  // Output: Welcome to Dart!
// ----------------------------------------------------------------
  /*
  Null Safety
    String? means it can be null.
    Without ?, you'll get a compile-time error if uninitialized.
    Null safety introduces three key changes:
      When you specify a type for a variable, parameter, or another relevant component, 
      you can control whether the type allows null. To enable nullability, you add a ? to 
      the end of the type declaration.
  */
  String? city; // Nullable
  print(city);  // Output: null
  city = 'Lahore';
  print(city);  // Output: Lahore
// ----------------------------------------------------------------
  /*
  Non-nullable Variable (With Initialization)
    Dart forces you to initialize non-nullable variables.
  */
  int count = 10;
  print(count);  // Output: 10
// ----------------------------------------------------------------
  /*
  late Keyword
    late means: "I'll initialize it later before use."
    The late modifier has two use cases:
      - Declaring a non-nullable variable that's initialized after its declaration.
      - Lazily initializing a variable.
    Notice
      If you fail to initialize a late variable, a runtime error occurs when the variable is used.
  */
  description = 'Learning Dart is fun!';    // see the Line# 01 (Global Variable)
  print(description); // Output: Learning Dart is fun!
  // -----------------------
  print("Program started");
  // temperature is never used, so readThermometer() is never called!
  // -----------------------
  print("Main started");
  print("Temperature is: $temperature");
// ----------------------------------------------------------------
  // Using final (Can’t Change After Assignment) Runtime Constant
  final username = 'Umer';
  print(username);  // Output: Umer
  // username = 'Ali'; // ❌ Error: final variable can’t be reassigned
  final String owais = "Hero";
  print(owais);
// ----------------------------------------------------------------
  // const (Compile-time Constant)
  // const values are fixed at compile time.
  const pi = 3.14159;
  const area = pi * 5 * 5;
  print('Area: $area');  // Output: Area: 78.53975

// ----------------------------------------------------------------
  // Wildcard Variable _
  // _ means: “We declare a variable but don’t use it.”
  var _ = 'Ignored value';
  print('We didn’t use that variable.');
}