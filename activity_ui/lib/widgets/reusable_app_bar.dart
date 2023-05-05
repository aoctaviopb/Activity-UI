import 'package:flutter/material.dart';
import 'package:activity_ui/constants/constants.dart';

class ReusableAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ReusableAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      centerTitle: true,
      leading: Builder(builder: (context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.menu),
        );
      }),
      title: Text(title),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.monetization_on),
        ),
        Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: const Icon(Icons.filter),
            );
          }
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kAppBarHeight);
}
