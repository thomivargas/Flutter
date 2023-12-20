import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              shape: const StadiumBorder(),
              elevation: 0),
          child: const Text('alerta', style: TextStyle(color: Colors.white)),
          onPressed: () {},
        ),
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
