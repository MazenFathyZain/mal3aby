import 'package:flutter/material.dart';

class Club extends StatelessWidget {
  const Club({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset(
                  'assets/ic_launcher.png',
                  width: 50,
                  height: 50,
                ),
                title: const Align(
                    alignment: Alignment.center,
                    child: Text('ملعب نادي القمطم')),
                trailing: const Text('5'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
