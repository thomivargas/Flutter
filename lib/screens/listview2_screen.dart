import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({super.key});

  final options = const ['juego1', 'juego2', 'juego3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Vista numero 2'),
        ),
        body: ListView.separated(
            itemCount: options.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(options[index]),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () => {},
              );
            },
            separatorBuilder: (_, __) => const Divider()));
  }
}
