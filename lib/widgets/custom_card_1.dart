import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.account_box_rounded,
              color: AppTheme.primary,
            ),
            title: Text('tehache'),
            subtitle: Text('usuario numero 2311'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
                TextButton(onPressed: () {}, child: const Text('Enviar'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
