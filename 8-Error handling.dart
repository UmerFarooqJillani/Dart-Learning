void main(){

  /*
  --> What is catch in Dart?
      In Dart, catch is used to capture and handle exceptions thrown in a try block. 
      When something goes wrong in a try, Dart immediately jumps to the catch block 
      (or on if it's specified), preventing your app from crashing.
  */
//-------------------------------------------------------------
  // Syntax of try-catch
  try {
    // Code that might throw an exception
  } catch (e) {
    // Code to handle the exception
  }
  /*
  - try – Wraps risky code
  - catch (e) – Captures the exception object in variable e
  */
//-------------------------------------------------------------
  /*
  --> How it Works
      1. Dart runs the code inside try.
      2. If an exception is thrown:
        - Dart stops executing the try block.
        - It jumps to the first matching on or catch block.
      3. You can then:
      - Log the error
      - Show a UI message
      - Retry the operation
      - Or rethrow it using rethrow
  */
//-------------------------------------------------------------
  // Simple catch
  try {
    int result = 10 ~/ 0;  // Integer division by zero
    print(result);
  } catch (e) {
    print('Caught error: $e');  // e holds the exception
  }
//-------------------------------------------------------------
  // catch (e, s) — Stack Trace Too!
  // You can capture both the exception and the stack trace using:
  try {
    throw Exception('Something failed');
  } catch (e, s) {
    print('Exception: $e');
    print('Stack Trace: $s'); // s → A StackTrace object that shows the call path leading to the error
  }
//-------------------------------------------------------------
  // on vs catch vs both
  // 'on' — Handle specific types of exceptions
  try {
    // riskyCode();
  } on FormatException {
    print('Caught FormatException');
  }
  //--------------------
  // 'catch' — Catch any exception, regardless of type
  try {
    // riskyCode();
  } catch (e) {
    print('Caught something: $e');
  }
  //------------------
  // on + catch — Handle specific type with error details
  try {
    // riskyCode();
  } on FormatException catch (e) {
    print('Details: $e');
  }
//-------------------------------------------------------------
  try {
    // int result = 10 ~/ 0;  // Integer division by zero
    int result = 10 ~/ 10;  // Integer division by 10
    print('Finally: $result');
  } catch (e) {
    print('Error: $e'); // Handle the exception first.
  } finally {  // To ensure that some code runs whether or not an exception is thrown
    print("Successfully"); 
  }
//-------------------------------------------------------------




}