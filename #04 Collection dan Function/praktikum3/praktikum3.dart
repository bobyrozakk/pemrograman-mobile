void main() {
  // var gifts = {
  //   // Key:    Value
  //   'first': 'partridge',
  //   'second': 'turtledoves',
  //   'fifth': 1,
  // };

  // var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

  // print(gifts);
  // print(nobleGases);

  // Langkah 2 (perbaikan)
  // var gifts = {
  //   'first': 'partridge',
  //   'second': 'turtledoves',
  //   'fifth': 'golden rings',
  // };

  // var nobleGases = {2: 'helium', 10: 'neon', 18: 'argon'};

  // print(gifts);
  // print(nobleGases);


  // Langkah 3

  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
    'nama': 'Boby',
    'nim': '2341760162'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
    1: 'Boby',
    21: '2341760162'
  };

  var mhs1 = Map<String, String>();
  mhs1['nama'] = 'Boby';
  mhs1['nim'] = '2341760162';

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Justin';
  mhs2[2] = '2431760126';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}


