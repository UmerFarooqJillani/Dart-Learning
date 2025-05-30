void main(){

  // for Loop
  for (var i = 0; i < 3; i++) {
    print(i);  // prints 0, 1, 2
  }
//---------------------------------------------------------
  // for-in Loop
  var fruits = ['apple', 'banana'];
  for (var items in fruits) {
    print(items);  // apple, banana
  }
//---------------------------------------------------------
  // While Loop
  var i = 0;
  while (i < 3) {
    print(i);
    i++;
  }
//---------------------------------------------------------
  // do-while Loop
  var a = 0;
  do {
    print(a);
    a++;
  } while (a < 3);
//---------------------------------------------------------
  // break Statement
  for (var i = 0; i < 5; i++) {
    if (i == 2) break;
    print(i);  // prints 0, 1
  }
//---------------------------------------------------------
  // continue Statement
  for (var i = 0; i < 5; i++) {
    if (i == 2) continue;
    print(i);  // prints 0, 1, 3, 4
  }
//---------------------------------------------------------
  // Labeled Loops
  /*
  A label is simply an identifier followed by a colon (:) that is applied to a statement 
  or a block of code. A label can be used with break and continue to control the flow more precisely.
  Line breaks are not allowed between the continue or break statement and its label name.
  */
   outerloop: // This is the label name 
   for (var i = 0; i < 5; i++) { 
      print("Innerloop: ${i}"); 
      innerloop: 
      for (var j = 0; j < 5; j++) { 
         if (j > 3 ) break ; 
         // Quit the innermost loop 
         if (i == 2) break innerloop; 
         // Do the same thing 
         if (i == 4) break outerloop; 
         // Quit the outer loop 
         print("Innerloop: ${j}"); 
      } 
   }
//---------------------------------------------------------
}