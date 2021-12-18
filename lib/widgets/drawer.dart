import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_demo/utils/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lotteries'.toUpperCase(),
                    style: const TextStyle(
                      color: Color(0xffff8000),
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ).p(10),
                  Column(
                    children: const [
                      DrawerTile(
                        heading: 'Govisetha',
                        image: AssetImage('assets/images/lottery1.png'),
                      ),
                      DrawerTile(
                        heading: 'Mahajana Sampatha',
                        image: AssetImage('assets/images/lottery2.png'),
                      ),
                      DrawerTile(
                        heading: 'Dhana Nidhanaya',
                        image: AssetImage('assets/images/lottery3.png'),
                      ),
                      DrawerTile(
                        heading: 'Daru Diri Sampatha',
                        image: AssetImage('assets/images/lottery4.png'),
                      ),
                      DrawerTile(
                        heading: 'Jathika Sampatha',
                        image: AssetImage('assets/images/lottery5.png'),
                      ),
                      DrawerTile(
                        heading: 'Mega Power',
                        image: AssetImage('assets/images/lottery6.png'),
                      ),
                      DrawerTile(
                        heading: 'Supiri Vasana',
                        image: AssetImage('assets/images/lottery7.png'),
                      ),
                      DrawerTile(
                        heading: 'Neeroga Lagna Jaya',
                        image: AssetImage('assets/images/lottery8.png'),
                      ),
                      DrawerTile(
                        heading: 'Vasana Sampatha',
                        image: AssetImage('assets/images/lottery9.png'),
                      ),
                      DrawerTile(
                        heading: 'Sevana',
                        image: AssetImage('assets/images/lottery10.png'),
                      ),
                      DrawerTile(
                        heading: 'Dollar Fortune',
                        image: AssetImage('assets/images/lottery11.png'),
                      ),
                    ],
                  ),
                  const HeightBox(20),
                  Text(
                    'My Account'.toUpperCase(),
                    style: const TextStyle(
                      color: Color(0xffff8000),
                      fontSize: 22,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ).p(10),
                  MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: GridView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      children: const [
                        GridTile(
                          icon: Icons.person_outline_outlined,
                          title: 'My Account',
                        ),
                        GridTile(
                          icon: Icons.airplane_ticket_outlined,
                          title: 'My Tickets',
                        ),
                        GridTile(
                          icon: Icons.account_balance_wallet_outlined,
                          title: 'My Wallet',
                        ),
                        GridTile(
                          icon: Icons.credit_card,
                          title: 'My Transactions',
                        ),
                        GridTile(icon: Icons.email_outlined, title: 'Inbox'),
                        GridTile(
                            icon: Icons.sports_handball,
                            title: 'Refer a Friend'),
                      ],
                    ),
                  ),
                  Text(
                    'Quick Links'.toUpperCase(),
                    style: const TextStyle(
                      color: Color(0xffff8000),
                      fontSize: 22,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ).p(10),
                  Column(
                    children: const [
                      DrawerTile(
                        heading: 'Lottery Results',
                      ),
                      DrawerTile(
                        heading: 'Winners',
                      ),
                      DrawerTile(
                        heading: 'How to Play',
                      ),
                    ],
                  ),
                  const HeightBox(40),
                  Text(
                    'More Links'.toUpperCase(),
                    style: const TextStyle(
                      color: Color(0xffff8000),
                      fontSize: 22,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ).p(10),
                  Column(
                    children: const [
                      DrawerTile(
                        heading: 'FAQ',
                      ),
                      DrawerTile(
                        heading: 'Responsible Gaming',
                      ),
                      DrawerTile(
                        heading: 'Terms & Conditions',
                      ),
                      DrawerTile(
                        heading: 'Privacy Policy',
                      ),
                      DrawerTile(
                        heading: 'Contact Us',
                      ),
                    ],
                  ),
                  const HeightBox(40),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    height: 50,
                    decoration: BoxDecoration(
                      color: ZeplinColors.royal_purple_two,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.vpn_key_outlined,
                                color: Colors.white,
                              ).px8(),
                              const Text(
                                'Change PIN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ),
                        const VerticalDivider(
                          color: Colors.white,
                          width: 1,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                CupertinoIcons.hand_point_right_fill,
                                color: Colors.white,
                              ).px8(),
                              const Text(
                                'Exit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const HeightBox(20),
                  Container(
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Color(0xffff8000),
                    ),
                  ),
                  const HeightBox(8),
                  const Center(
                    child: Text(
                      'version 1.0.0',
                      style: TextStyle(
                        color: ZeplinColors.royal_purple_three,
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const HeightBox(20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GridTile extends StatelessWidget {
  final IconData icon;
  final String title;
  const GridTile({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple, width: 0.2),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.purple,
            size: 30,
          ).p(10),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ).p(10),
        ],
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  final String heading;
  final IconData? icon;
  final AssetImage? image;

  const DrawerTile({
    Key? key,
    required this.heading,
    this.icon,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: Colors.purple, width: 0.2),
        ),
      ),
      child: ListTile(
        leading: image != null
            ? Image(
                width: 40,
                height: 40,
                image: image!,
              )
            : null,
        title: Text(heading),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: DrawerHeader(
        decoration: const BoxDecoration(
          color: ZeplinColors.royal_purple_three,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 20,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/flag1.png',
                    fit: BoxFit.cover,
                  ).px8(),
                  Image.asset(
                    'assets/icons/flag2.png',
                    fit: BoxFit.cover,
                  ).px8(),
                  Image.asset(
                    'assets/icons/flag3.png',
                    fit: BoxFit.cover,
                  ).px8(),
                  const Spacer(),
                  const Icon(
                    CupertinoIcons.bell_circle_fill,
                    color: ZeplinColors.hot_magenta,
                    size: 35,
                  ).badge(
                    color: Colors.red,
                    count: 3,
                    size: 15,
                    position: VxBadgePosition.rightTop,
                  ),
                ],
              ),
            ),
            const HeightBox(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      child: Text('NJ'),
                    ),
                    const WidthBox(8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Mr. Vishnu Gupta",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const HeightBox(4),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                style: TextStyle(
                                  color: Color(0xfffdd157),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10.7,
                                ),
                                text: "LKR ",
                              ),
                              TextSpan(
                                style: TextStyle(
                                  color: Color(0xfffdd157),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                                text: "205.50",
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const HeightBox(10),
          ],
        ),
      ),
    );
  }
}
