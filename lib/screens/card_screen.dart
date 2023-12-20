import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('card screen'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          children: const [
            CustomCard1(),
            SizedBox(height: 10),
            CustomCard2(
              imageUrl:
                  'https://concepto.de/wp-content/uploads/2015/03/paisaje-e1549600034372.jpg',
              title: 'Imagen uno',
            ),
            SizedBox(height: 30),
            CustomCard2(
                imageUrl:
                    'https://wordpress-network.prod.aws.skyscnr.com/wp-content/uploads/2018/05/GettyImages-181331018.jpg?w=1224&h=647&crop=1'),
            SizedBox(height: 30),
            CustomCard2(
                imageUrl:
                    'https://www.hofmann.es/blog/wp-content/uploads/2021/09/HF_3_Paisajes_WEB-23.jpg'),
          ],
        ));
  }
}
