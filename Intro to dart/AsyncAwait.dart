void main() async {
  print("Estamos a punto de pedir datos");

  final data = await httpGet('https://api.hola.com/siuu');

  print(data);

  print("Terminamos");
}

Future<String>? httpGet(String url) {
  return Future.delayed(Duration(seconds: 4), () {
    return 'Hello world!';
  });
}
