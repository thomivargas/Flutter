import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('este es el contendio de la alerta'),
                SizedBox(height: 15),
                FlutterLogo(
                  size: 75,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Enviar'))
            ],
          );
        });
  }

  void displayDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            title: const Text('alerta'),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('este es el contendio de la alerta'),
                SizedBox(height: 15),
                FlutterLogo(
                  size: 75,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('cancelar'))
            ],
          );
        },
        barrierDismissible: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                shape: const StadiumBorder(),
                elevation: 0),
            onPressed: () => Platform.isAndroid
                ? displayDialog(context)
                : displayDialogIOS(context),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'alerta',
                style: TextStyle(color: Colors.white),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green[400],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Image.asset('assets/LogosWhatsappIcon.png',
              width: 25, height: 25),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
