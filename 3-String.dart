
void main(){
  // String Concatenation or Interpolation
  String str1 = "Umer";
  String str2 = "Farooq";
  String str3 = str1 + str2;
  print("Hey ${str1 +str2}");
  print("Hey ${str3}");
  int num = 2;
  print("This is a string : " + num.toString());
  // ---------------------------------------------------------------
  // multi-line string
  var s1 = '''
  You can create
  multi-line strings like this one.
  ''';

  var s2 = """This is also a
  multi-line string.""";

  print(s1 + s2);
}