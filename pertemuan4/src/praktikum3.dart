void main(){

  
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  mhs1.addAll({"name": "M. Tryo Bagus Anugerah Putra", "nim": "2241720053"});
  mhs2.addAll({ 4: "M. Tryo Bagus Anugerah Putra", 6: "2241720053"});
  gifts.addAll({ "name": "M. Tryo Bagus Anugerah Putra", "nim": "2241720053"});
  nobleGases.addAll({ 4: "M. Tryo Bagus Anugerah Putra", 6: "2241720053"});

  print(mhs1);
  print(mhs2);
  print(gifts);
  print(nobleGases);
}