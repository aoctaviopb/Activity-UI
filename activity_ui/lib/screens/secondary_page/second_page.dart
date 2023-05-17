import 'package:activity_ui/screens/secondary_page/pages.dart';
import 'package:activity_ui/widgets/reusable_app_bar.dart';
import 'package:activity_ui/widgets/reusable_drawer.dart';
import 'package:activity_ui/widgets/reusable_end_drawer.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _buildBody = const [FrameLayoutOne(), FrameLayoutTwo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: const ReusableAppBar(
        title: 'Frame Layout',
      ),
      body: _buildBody[_selectedIndex],
      drawer: const ReusableDrawer(),
      endDrawer: const ReusableEndDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amberAccent,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Layout 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Layout 2',
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
