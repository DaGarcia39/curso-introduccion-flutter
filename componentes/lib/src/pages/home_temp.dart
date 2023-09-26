import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Component temp"),
      ),
      body: ListView(
        // children: _crearItems(),
        children: _crearItemsCorto(),
      ),
    );
  }

  // List<Widget> _crearItems() {
  //   List<Widget> lista = [];

  //   for (String opt in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );

  //     lista
  //       ..add(tempWidget)
  //       ..add(
  //         const Divider(),
  //       );
  //   }

  //   return lista;
  // }

  List<Widget> _crearItemsCorto() {
    return opciones.map((String opt) {
      return Column(
        children: [
          ListTile(
            title: Text('$opt!'),
            subtitle: const Text("Anything"),
            leading: const Icon(Icons.home_filled),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          const Divider(),
        ],
      );
    }).toList();
  }
}
