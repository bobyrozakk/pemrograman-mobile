void main() {
  // Langkah 1 & 2
  // var list = [1, 2, 3];
  // var list2 = [0, ...list];
  // print(list);
  // print(list2);
  // print(list2.length);

  //Langkah 3
  //   var list = [1, 2, 3];
  //   var list2 = [0, ...list];

  //   print(list);
  //   print(list2);
  //   print(list2.length);

  //   var list1 = [1, 2, null];
  //   print(list1);

  //   var list3 = [0, ...?list1];
  //   print(list3);
  //   print(list3.length);

  //   // add Langkah 3
  //   var nim = [2, 3, 4, 1, 7, 6, 0, 1, 6, 2];
  //   var dataNim = [0, ...nim];

  //   print(dataNim);

  // Langkah 4
  //   bool promoActive = false;

  //   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  //   print(nav);
  // }

  // Langkah 5
  // var login = 'User';

  // var nav2 = [
  //   'Home',
  //   'Furniture',
  //   'Plants',
  //   if (login == 'Manager') 'Inventory',
  // ];

  // print(nav2);

  // Langkah 6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
