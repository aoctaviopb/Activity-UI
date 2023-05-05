import 'package:flutter/material.dart';

class ReusableEndDrawer extends StatelessWidget {
  const ReusableEndDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Drawer Derecha'),
          ),
          ListTile(
            title: const Text('texto 1'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('texto 1'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
