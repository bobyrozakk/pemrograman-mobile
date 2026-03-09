void main() {
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);
  // var names1 = <String>{};
  
  // // Langkah 3
  // Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  // print(names1);
  // print(names2);
  // print(names3);

// Langkah 3
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {};

  names1.add("Boby Rozak Saputra");
  names1.add("2341760162");

  names2.addAll({"Boby Rozak Saputra", "2341760162"});

  print(names1);
  print(names2);

}
