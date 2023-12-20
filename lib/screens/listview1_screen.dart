import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({super.key});

  final options = const ['juego1', 'juego2', 'juego3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Vista numero 1',
            // style: TextStyle(
            //   fontSize: 16.0, // Ajusta el tamaño del texto
            //   color: Colors.white, // Cambia el color del texto
            // ),
          ),
        ),
        body: ListView(
          children: [
            ...options
                .map((game) => ListTile(
                      title: Text(
                        game,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: const Icon(Icons.arrow_forward),
                    ))
                .toList()
          ],
        ));
  }
}
