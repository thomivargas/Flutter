import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundColor: Colors.red,
              child: Text(
                'TH',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage(
              'https://static.vecteezy.com/system/resources/previews/007/409/979/non_2x/people-icon-design-avatar-icon-person-icons-people-icons-are-set-in-trendy-flat-style-user-icon-set-vector.jpg'),
        ),
      ),
    );
  }
}
