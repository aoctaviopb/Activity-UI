import 'package:activity_ui/widgets/reusable_app_bar.dart';
import 'package:activity_ui/widgets/reusable_bottom_nav_bar.dart';
import 'package:activity_ui/widgets/reusable_drawer.dart';
import 'package:activity_ui/widgets/reusable_end_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: const ReusableAppBar(
        title: 'My Title',
      ),
      body: Container(
        color: Colors.red,
        margin: const EdgeInsets.all(20.0),
      ),
      drawer: const ReusableDrawer(),
      endDrawer: const ReusableEndDrawer(),
      bottomNavigationBar: const ReusableBottomNavBar(),
    );
  }
}


