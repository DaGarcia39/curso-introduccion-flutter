import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Page'),
        actions: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://img.freepik.com/vector-premium/avatar-perfil-usuario-femenino-es-mujer-personaje-protector-pantalla-emociones_505620-617.jpg?w=2000'),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: const CircleAvatar(
              backgroundColor: Colors.greenAccent,
              child: Text("DL"),
            ),
          ),
        ],
      ),
      body: const Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://m.media-amazon.com/images/I/716AEchs2ZL._UF894,1000_QL80_.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
