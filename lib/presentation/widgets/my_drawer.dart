import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: const [
          SizedBox(height: 50),
          ListTile(
            title: Text('Home'),
          ),
          ListTile(
            title: Text('Buscar'),
          ),
          ListTile(
            title: Text('Favoritos'),
          ),
          ListTile(
            title: Text('Minha Conta'),
          ),
        ],
      ),
    );
  }
}
