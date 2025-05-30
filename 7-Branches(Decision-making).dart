void main(){

  // if...else Statement
  if (2>=2) {
  // code if condition is true
  } else if (2>=2) {
    // code if otherCondition is true
  } else {
    // fallback code
  }
//-------------------------------------------------------
  // if-case Statement
  // This checks that pair is a list of two integers and unpacks it into x and y.
  var pair = [10, 20];
  if (pair case [int x, int y]) {
    print("X: $x, Y: $y"); // X: 10, Y: 20
  }
  //-----------------
  var input = [10];
  if (input case [int x, int y]) {
    print("Valid input: $x and $y");
  } else {
    print("Invalid input!"); // Output: Invalid input!
  }
  //----------------
  // With 'Map' Patterns (When Supported)
  var map = {'name': 'John', 'age': 30};
  if (map case {'name': String name, 'age': int age}) {
    print("Name: $name, Age: $age");
  }
  //----------------
  // Guard Clauses with 'when'
  // Adds extra condition after the pattern matches.
  var temp = 37;
  if (temp case int t when t > 36.5) {
    print("Fever alert!");    // Fever alert!
  }
//-------------------------------------------------------
  // switch Statement
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      // executeClosed();
    case 'PENDING':
      // executePending();
    case 'APPROVED':
      // executeApproved();
    case 'DENIED':
      // executeDenied();
    case 'OPEN':
      // executeOpen();
    default:
      // executeUnknown();
  }

  // --------------- e.g -------------------------------
  // var x = switch (y) { ... };
  // print(switch (x) { ... });
  // return switch (x) { ... };
//-----------------------------------------------------------


}
