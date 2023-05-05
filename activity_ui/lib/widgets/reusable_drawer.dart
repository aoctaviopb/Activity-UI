import 'package:flutter/material.dart';

class ReusableDrawer extends StatelessWidget {
  const ReusableDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Drawer'),
          ),
          ListTile(
            title: const Text('texto 1'),
            onTap: () {},
          ),
          const Text('texto 2'),
          const Text('texto 3'),
        ],
      ),
    );
  }
}
