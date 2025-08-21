import 'dart:io';

List<String> courseList = [
  "Theory of Automata",
  "Pakistan Studies",
  "Mobile Application Development",
  "Introduction to Financial Technology",
  "Artificial Intelligence (Theory+LAB)",
  "Technopreneurship",
];

void main() async {
  for (String i in courseList) {
    // Define the path for the new directory
    final newDirectoryPath =
        'C:/Users/HP 840 G3/Documents/${i}'; // Replace with your desired path

    // Create a Directory object
    final newDirectory = Directory(newDirectoryPath);

    try {
      // Check if the directory already exists to avoid errors
      if (await newDirectory.exists()) {
        print('Directory already exists: ${newDirectory.path}');
      } else {
        // Use create() for asynchronous creation
        await newDirectory.create(recursive: true);
        print('Directory created successfully: ${newDirectory.path}');
      }
    } catch (e) {
      print('Failed to create directory: $e');
    }
  }
}
