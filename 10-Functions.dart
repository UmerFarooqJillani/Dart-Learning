/*
A function is a reusable block of code that performs a specific task. 
In Dart, functions are objects and have a type: Function.
In Dart, functions are first-class objects, meaning they can be assigned 
to variables, passed as arguments, and returned from other functions.
You can also call an instance of a Dart class as if it were a function.
syntax:
  ReturnType functionName(ParameterType parameterName) {
    // function body
    return value;
  }
-------------------------------------------------------------
Arrow Syntax:
  ReturnType functionName(ParameterType parameterName) => return value;
-------------------------------------------------------------
Type of parameter in Dart:
  1. Required
  2. Optional
    - Named {}
    - Positional []
-------------------------------------------------------------
*/
//----------------------------
Fun() {
  print("Hello, Function");
  return;
}

//----------------------------
int add(int a, int b) {
  return a + b;
}

//----------------------------
bool isEven(int number) => number % 2 == 0;
//---------------------------------------------------------------
// Optional Parameters
//---------------------------------------------------------------
// Named Parameters {}
// void greet({required String name}) {
//        or
void greet({String name = 'Guest'}) {
  print('Hello, $name!');
}

//----------------------------
// Positional Parameters []
String gr(String name, [String title = 'Mr.']) {
  return 'Hello, $title $name';
}
//-----------------------------------------------------------------
bool topLevel = true;

Function makeAdder(int addBy) {
  // This function takes addBy as input and returns a new function.
  // The returned function takes another integer i and adds it to addBy.
  return (int i) => addBy + i;
}

void main() async {
  Fun(); //Function Call
  print(add(2, 5));
  print(isEven(10));

  //Name parameter
  // if we need to passing a arguments during function
  // call in 'Name parameter' case the parameter name are need to pass argument
  greet(); // Hello, Guest!
  greet(name: 'Ali');

  //Positional Parameters
  // No need to use parameter name during function call
  print(gr('Umer')); // Hello, Mr. Umer
  print(gr('Umer', 'Dr.')); // Hello, Dr. Umer
  //---------------------------------------------------------------
  // Anonymous Functions (Lambdas or closures)
  //    Functions without names, usually used in forEach, map, etc.
  //---------------------------------------------------------------
  var multiply = (int a, int b) {
    return a * b;
  };
  print(multiply(1000, 10));
  //---------------------------------------------------------------
  var list = [1, 2, 3];
  list.forEach((number) {
    print(number * 2);
  });
  //--------------------
  list.forEach((n) => print(n * 2));
  //----------------------------------------------------------------
  // Function as Parameters
  print_value(value) {
    print("The value of List is: $value");
  }
  //List
  var values = [1, 2, 3, 4, 5];
  values.forEach(print_value); //Fun as a Parameter
  //----------------------------------------------------------------
  // .map() function
  // The .map() function in Dart transforms each element of a 
  // collection (usually a List or Set) into a new element, using a function you provide.
  var numbers = [1, 2, 3];
  var squares = numbers.map((n) => n * n);
  print(squares);           // (1, 4, 9)
  print(squares.toList());  // [1, 4, 9]
  // ------------------
  var names = ['Ali', 'Sara'];
  var greetings = names.map((name) => 'Hello $name');
  print(greetings.toList()); // [Hello Ali, Hello Sara]
  // ------------------
  // var uppercaseList = list.map((item) => item.toUpperCase()).toList();
  // uppercaseList.forEach((item) => print('$item: ${item.length}'));
  // -------------------------------------------------------------------
  // A representation of the runtime type of the object.
  String str = " Umer Farooq Jillani ";
  print(str.runtimeType);       // output: String
// -------------------------------------------------------------------
  // Lexical Scope and Lexical closures in dart
// -------------------------------------------------------------------
  // Lexical Scope
  // - Lexical scope means that the scope (or visibility) of variables is determined 
  //   by the physical structure of the code—i.e., by where the variables are declared
  //   using {} (curly braces).
  // - Inner functions have access to all variables in their outer lexical scope.
  // - Dart’s lexical scope allows inner functions to access outer-scope variables all 
  //   the way up the call tree.
  var insideMain = true;
  void myFunction() {
    var insideFunction = true;
    void nestedFunction() {
      var insideNestedFunction = true;
      // All of these are in scope:
      assert(topLevel);   //declare in Line # 50   // ✅ Accessible (global)  
      assert(insideMain);   // ✅ Accessible (from main)
      assert(insideFunction);  // ✅ Accessible (from myFunction)
      assert(insideNestedFunction);    // ✅ Accessible (local)
    }
  }
  //-----------------------------------
  // Lexical Closures
  // - A closure is a function that captures variables from its surrounding 
  // scope — even after the outer function has finished executing.
  // - A closure is a function that remembers the variables from the scope 
  // where it was created, even if it's executed in a different scope later.

  var add2 = makeAdder(2); // closure remembers addBy = 2 // makeAdder() fnc declare in line # 52
  // "add2" now stores that function "(int i) => 2 + i"
  // The variable addBy is captured in a closure, so it remains remembered.

  var add4 = makeAdder(4); // closure remembers addBy = 4
  assert(add2(3) == 5);  // 2 + 3
  assert(add4(3) == 7);  // 4 + 3 
// -----------------------------------
// |Concept |Lexical Scope                           |Lexical Closure                                       |
// |--------|----------------------------------------|------------------------------------------------------|
// |Meaning |Variable visibility based on code layout|Function captures variables from its surrounding scope|
// |Access  |Inner can access outer scope            |Function remembers outer scope variables              |
// |Example |Nested functions                        |Returning function that uses a scoped variable        |
// |--------------------------------------------------------------------------------------------------------|

//-----------------------------------------------------------------
  // Tear-offs
  /*
  In Dart, when you refer to a function, method, or constructor without calling it 
  (i.e., without parentheses), Dart creates a "tear-off" — which is essentially a function reference.
  This function reference (tear-off) can be passed around and called later, just like any other function.
  */
  var charCodes = [68, 97, 114, 116];
  var buffer = StringBuffer();
  // StringBuffer is a class used to efficiently build or concatenate strings.
  // Instead of using + repeatedly to join strings (which creates new string objects every time), 
  // StringBuffer creates only one growing buffer internally.
  // It's faster and memory-efficient for building large strings.

  // var buffer_2 = StringBuffer();
  // buffer_2.write('Hello, ');
  // buffer_2.write('world!');
  // print(buffer.toString()); // Output: Hello, world!

  //---------Good----------------
  // Function tear-off
  charCodes.forEach(print);
  // print is passed without parentheses, so you're not calling print, but referring to it.
  // Dart automatically creates a closure (tear-off) from print.
  // It’s equivalent to writing:
  // (code) => print(code);
  // Method tear-off
  charCodes.forEach(buffer.write);

  //----------Bad-----------------
  // Function lambda
  charCodes.forEach((code) {
    print(code);
  });
  // Method lambda
  charCodes.forEach((code) {
    buffer.write(code);
  });
//-----------------------------------------------------
  // Generators
    // A generator is a special kind of function that lazily produces values, 
    // one at a time, only when needed.
    // Think of it like a vending machine — you push a button (iterate), and it 
    // gives you one item (value) at a time.
  // Why Use Generators?
    // To optimize memory: instead of storing large lists in memory, you generate values on the fly.
    // To handle infinite or large sequences.
    // To enable lazy evaluation.
    // Types
      //   | Type             | Returns    | Marked With | Use Case                    |
      //   | ---------------- | ---------- | ----------- | --------------------------- |
      //   | Synchronous      | Iterable   | sync*       | For regular iteration       |
      //   | Asynchronous     | Stream     | async*      | For async or time-based ops |
      //   |---------------------------------------------------------------------------|
    // Synchronous vs Asynchronous Operations (Comparison)
      // | Feature     | Synchronous                | Asynchronous                           |
      // | ----------- | -------------------------- | -------------------------------------- |
      // | Return Type | `Iterable<T>`              | `Stream<T>`                            |
      // | Keyword     | `sync*`                    | `async*`                               |
      // | When Used   | Immediate value generation | Delayed/time-based/event-driven values |
      // | Execution   | Blocking                   | Non-blocking (can pause/resume)        |
      // | Access      | `for-in` loop              | `await for` loop                       |
      // | Memory      | Lightweight, fast          | Good for IO, UI, or async data streams |
      // |-----------------------------------------------------------------------------------|

//-----------------------------------------------------
  //  Synchronous Generator – sync*
  Iterable<int> naturalsTo(int n) sync* {
    int k = 0;
    while (k < n) yield k++;
  }
  //   sync* marks it as a sync generator.
  // yield emits a value one by one.
  // Iterable<int> is returned — you can use for-in to loop.
  for (var num in naturalsTo(5)) {
    print(num); // 0 1 2 3 4
  }
  //----------------------
  // Asynchronous Generator – async*
  Stream<int> asynchronousNaturalsTo(int n) async* {
    int k = 0;
    while (k < n) yield k++;
  }
  // async* marks it as an async generator.
  // yield emits values asynchronously.
  // Stream<int> is returned — use await for.
  await for (var num in asynchronousNaturalsTo(5)) {
    print(num); // 0 1 2 3 4
  }
  //--------------------------
  // yield* — Delegating to another generator
  // If a generator needs to call another generator (recursive or reusable), use yield*:

  Iterable<int> naturalsDownFrom(int n) sync* {
    if (n > 0) {
      yield n;
      yield* naturalsDownFrom(n - 1); // recursion
    }
  }
  //-------------------------
  
}
