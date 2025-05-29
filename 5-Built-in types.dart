void main(){
  /*
  Dart language has special support for the following:
    Numbers   --> (int, double(float))
    Strings   --> (String)
    Booleans  --> (bool)
    Records   --> ((value1, value2))
    Functions --> (Function)
    Lists     --> (List, also known as arrays)
    Sets      --> (Set)
    Maps      --> (Map)
    Runes     --> (Runes; often replaced by the characters API)
    Symbols   --> (Symbol)
    null      --> (Null)
  */
//----------------------------------------------------------------------------
  // Records --> ((value1, value2))
  // Tuple-like structure to hold multiple values.
    var user = ('Alice', 25); // A record with a String and an int
    print(user.$1); // Alice
    print(user.$2); // 25
//----------------------------------------------------------------------------
  // Functions (Function)
  // Stores reusable blocks of code.
    int add(int a, int b) => a + b;
    Function multiply = (int x, int y) => x * y;
    print(add(1, 5));
    print(multiply(3, 5));
//----------------------------------------------------------------------------
  // Lists (List)
  // An ordered collection of items (like arrays).
    List<int> scores = [90, 80, 70];
    print(scores[1]); // 80
//----------------------------------------------------------------------------
  // Sets (Set)
  // An unordered collection of unique items.
    Set<String> fruits = {'apple', 'banana', 'apple'};
    print(fruits); // {apple, banana}
//----------------------------------------------------------------------------
  // Maps (Map)
  // A key-value pair collection.
    Map<String, int> marks = {'Math': 90, 'Science': 85};
    print(marks['Math']); // 90
//----------------------------------------------------------------------------
  // Runes (Runes)
  // Used to handle Unicode characters.
    Runes input = Runes('\u{1F600}'); // 😀 emoji
    print(String.fromCharCodes(input));
//----------------------------------------------------------------------------
  // Symbols (Symbol)
  // Used for reflection (advanced).
    Symbol sym = #myFunction;
    print(sym); // Symbol("myFunction")


    
}