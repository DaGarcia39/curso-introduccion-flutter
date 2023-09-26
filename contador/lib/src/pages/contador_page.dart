import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  // ignore: prefer_const_constructors
  final _estiloTexto = TextStyle(fontSize: 25);
  // ignore: prefer_final_fields
  int? _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful"),
        centerTitle: false,
        elevation: 1.2,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Número de taps:",
              style: _estiloTexto,
            ),
            Text(
              '$_conteo',
              style: _estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: _crearBotones(),
    );
  }

  Widget? _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: _toZero,
          child: const Icon(Icons.exposure_zero),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          onPressed: _restar,
          child: const Icon(Icons.exposure_minus_1),
        ),
        const SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: _agregar,
          child: const Icon(Icons.plus_one),
        ),
        const SizedBox(
          width: 5.0,
        ),
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo = _conteo! + 1);
  }

  void _restar() {
    setState(() => _conteo = _conteo! - 1);
  }

  void _toZero() {
    setState(() => _conteo = 0);
  }
}
