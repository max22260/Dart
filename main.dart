import 'dart:html';
import 'dart:async';

void main() {
  final InputElement input = querySelector('input');

  final DivElement div = querySelector('div');

  final validator =
      new StreamTransformer.fromHandlers(handleData: (inputvalue, sink) {
    if (inputvalue.contains('@')) {
      sink.add(inputvalue);
    } else {
      sink.addError('Enter a valid email');
    }
  });

  input.onInput
      .map((dynamic e) => e.target.value)
      .transform(validator)
      .listen((v) => div.innerHtml = '', onError: (err) => div.innerHtml = err);
}
