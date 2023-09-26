void main() {
  print("Estamos a punto de pedir datos");

  httpGet('https://api.hola.com/siuu')?.then((datos) => print(datos));

  print("Terminamos");
}

Future<String>? httpGet(String url) {
  return Future.delayed(Duration(seconds: 4), () {
    return 'Hello world!';
  });
}
