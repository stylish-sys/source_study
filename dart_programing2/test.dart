void main(){

  Future<void> todo (int second) async {
    await Future.delayed(Duration(seconds: second));
    print('TODO Done in $second seconds');
  }


  todo(3);
  todo(1);
  todo(5);

  Stream<int> todo1() async*{
    int counter = 0;

    while(counter <= 10){
      counter++;
      await Future.delayed(Duration(seconds: 1));
      print('TODO is Running $counter');

      yield counter;
    }
  }

  todo1().listen((event) {});

}