void main(){

  String namaLengkap = 'M. Tryo Bagus Anugerah Putra'; 
  String nim = '2241720053';
  
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print('$i, $namaLengkap, $nim');
    }
  }
}

 bool isPrime(int number) {
    if (number <= 1) {
      return false;
    }
    for (int i = 2; i < number; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }