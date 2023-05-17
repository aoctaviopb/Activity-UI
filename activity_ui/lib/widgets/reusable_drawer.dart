import 'package:activity_ui/screens/home_page/home_page.dart';
import 'package:activity_ui/screens/secondary_page/second_page.dart';
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
            title: const Text('Home Page'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Second Page'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecondPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
