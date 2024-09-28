void main() {
  // Langkah 1
  var list1 = <int?> [1, 2, 3];
  var list2 = [0, ...list1];
  print(list1);
  print(list2);
  print(list2.length);

  // Langkah 2
  list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  // Langkah 3
  var nim = [2241720053];
  var list4 = [...list3, ...nim];
  print(list4);

  // Langkah 4
  // ketika promoActive true
  // var promoActive = true;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // ketika promoActive false
  var promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  // Langkah 5
  // var login = 'Manager';
  // var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  // print(nav2);

  // Ketika Login memiliki kondisi yang lain
  var login = 'Staff';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);

  // Langkah 6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}