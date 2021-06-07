import 'dart:async';

void main(List<String> arguments) {
  print('About to fetch data .....');

  getResult();

  print('max 10 min');

  get('jasasjsnasjknasjansda').then((value) => print(value));
}

Future<String> get(String url) {
  return new Future.delayed(new Duration(seconds: 3), () {
    return 'got the data ';
  });
}

void getResult() async {
  var result = await get('gjahbsajhdbadjas');
  print(result);
}
