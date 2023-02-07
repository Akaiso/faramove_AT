import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView(
          children: [
            ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.account_circle),
              ),
              title: const Text('Hi,Sarah'),
              trailing: Row(
                children: const [
                  Icon(Icons.view_comfy_outlined),
                  Icon(Icons.notifications_none_outlined)
                ],
              ),
            ),
            ListTile()
          ],
        )
      ],
    );
  }
}
