import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_demo/utils/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight + 10);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: ZeplinColors.royal_purple_three,
      leading: MaterialButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        child: Image.asset('assets/icons/ham_menu.png'),
      ),
      title: SizedBox(
        height: kToolbarHeight,
        child: Image.asset(
          'assets/images/logo.png',
        ),
      ),
      actions: [
        Center(
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  margin: const EdgeInsets.all(7),
                  color: Colors.white,
                ),
              ),
              const Icon(
                CupertinoIcons.bell_circle_fill,
                color: ZeplinColors.hot_magenta,
                size: 35,
              ),
            ],
          ).badge(
            color: Colors.red,
            count: 3,
            size: 15,
            position: VxBadgePosition.rightTop,
          ),
        ),
        const WidthBox(20),
        Center(
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  margin: const EdgeInsets.all(7),
                  color: Colors.white,
                ),
              ),
              const Icon(
                CupertinoIcons.bell_circle_fill,
                color: ZeplinColors.hot_magenta,
                size: 35,
              ),
            ],
          ).badge(
            color: Colors.red,
            count: 3,
            size: 15,
            position: VxBadgePosition.rightTop,
          ),
        ),
        const WidthBox(20),
      ],
    );
  }
}
