import 'dart:convert';

void main(List<String> arguments) {
  var rawJason = '''{
"albumId": 1,
"id": 1,
"title": "accusamus beatae ad facilis cum similique qui sunt",
"url": "https://via.placeholder.com/600/92c952",
"thumbnailUrl": "https://via.placeholder.com/150/92c952"
}''';

  var body = json.decode(rawJason);

  var imageModel = ImageModel.fromJason(parsedJason: body);

  print(imageModel.title);
  print(imageModel.url);
}

class ImageModel {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  ImageModel({this.albumId, this.id, this.title, this.thumbnailUrl, this.url});

  ImageModel.fromJason({var parsedJason}) {
    id = parsedJason['id'];
    albumId = parsedJason['albumId'];
    title = parsedJason['title'];
    url = parsedJason['url'];
    thumbnailUrl = parsedJason['thumbnailUrl'];
  }
}
