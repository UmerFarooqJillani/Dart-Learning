void main(){
  
  /*
  -> List (Every element in a List is an object)
      - Ordered collection of items 
      - Allows duplicates
      - Access By	Index
      - Storing ordered values
  -> Set
      - Unordered collection of unique items 
      - Not Allows duplicates
      - No index, use iteration or methods
      - Storing unique values
  -> Map
      - Unordered collection of key-value pairs, Keys must be unique
      - values can duplicate
      - Key (e.g., map['key'])
      - Key-based lookup or fast retrieval
  */
//----------------------------------------------------------
  // Lists
  var list1 = [1, 2, 3];
  var list2 = [1, 2, if(3>2) "a"];

  List<String> fruits = ['apple', 'banana', 'apple'];
  print(list1);          //  [1, 2, 3]
  print(list2);          //  [1, 2, a]
  print(fruits);          // [apple, banana, apple]
  print(fruits[1]);       // banana
  //-----------------
  // .Length Property
  print(list1.length);    //3
//----------------------------------------------------------
  // Sets
  var set1 = {1, 3, 5, 6, 6};
  Set<String> fruits2 = {'apple', 'banana', 'apple'};
  print(set1);             // {1, 3, 5, 6}
  print(fruits2);          // {apple, banana} — no duplicates

  fruits2.add("Orange");
  print(fruits2);
//----------------------------------------------------------
  //Maps
  var map1 = {
    "Name": "Umer",
    "age": 123
  };
  Map<String, String> contacts = {
    'Alice': '1234',
    'Bob': '5678',
  };
  print(map1);                 // {Name: Umer, age: 123}
  print(contacts);              // {Alice: 1234, Bob: 5678}
  print(contacts['Bob']);       // 5678
//------------------------------------------------
  // Create the map using map constructor
  var map_example = Map<String, dynamic>();
  map_example["Name"] = "Bilal";
  map_example["age"] = 10_000;
  print(map_example);
  
  map_example.forEach((key, value) {
    print('Key: $key, Value: $value');
  });
}