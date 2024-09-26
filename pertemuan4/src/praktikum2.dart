void main() {

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  // var names3 = {}; -> Creates a map, not a set.

  print(names1);
  print(names2);

  names1.add("M. Tryo Bagus Anugerah Putra");
  names1.add("2241720053");
  names2.addAll({"M. Tryo Bagus Anugerah Putra", "2241720053"});

  print(names1);
  print(names2);
}


  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);