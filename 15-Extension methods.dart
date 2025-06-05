/* 
--> What Is an Extension Method?        (Introduced in Dart 2.7)
    An extension method allows you to add new functionality to existing classes 
    without modifying them or creating a subclass.
        Syntax:
            extension ExtensionName on Type {
                // Your method here
                ReturnType methodName(args) {
                    // logic
                }
            }

    - Extension methods cannot access private members of a class (_privateVar).
    - You can use Extension on Custom Classes
    - Especially useful when working with 'APIs' you can't modify.
*/

extension StringExtension on String {
  String greet() {
    return "Hello, $this!";
  }
}

// Adding Multiple Methods
extension NumExtensions on num {
  num squared() => this * this;
  bool isPositive() => this > 0;
}
// Date Formatting Helper
extension DateHelpers on DateTime {
  String toShortString() => "$day/$month/$year";
}

// Handling Conflicts
// If multiple extensions provide the same method name, you have three options:
//    Option 1: Use show / hide
//             import 'string_apis.dart'; // with parseInt()
//             import 'other.dart' hide NumberParsing2; // hides conflicting extension

//    Option 2: Use extension explicitly
//             print(NumberParsing('42').parseInt());
//             print(NumberParsing2('42').parseInt());

//    Option 3: Use import prefix
//             import 'string_apis.dart';
//             import 'string_apis_3.dart' as utils;
//             print(utils.NumberParsing('42').parseInt());





void main(){
    print("Alice".greet()); // Output: Hello, Alice!

    // Adding Multiple Methods
    print(5.squared()); // 25
    print((-3).isPositive()); // false

    // Date Formatting Helper
    print(DateTime.now().toShortString()); // e.g., 4/6/2025

}