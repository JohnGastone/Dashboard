// ignore_for_file: prefer_const_constructors

import 'package:dashboard/screens/kazi_mpya.dart';
import 'package:dashboard/screens/kazi_zilizopita.dart';
import 'package:dashboard/screens/kuhusu_mashine.dart';
import 'package:dashboard/screens/main_screen.dart';
import 'package:dashboard/screens/ripoti.dart';
import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';
import '../../constant.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 1.0,
      backgroundColor: Color.fromARGB(255, 211, 201, 201),
      child: ListView(
        shrinkWrap: true,
        children: [
          Image.asset(
            "images/sonak_logo-removebg.png",
            height: 160,
            width: 160,
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.home_2,
            title: "Nyumbani.",
            onTap: () {
              // Migrating to Kazi Mpya screen
              Navigator.pop(context);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MainScreen()));
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.add,
            title: "Kazi Mpya.",
            onTap: () {
              // Migrating to Kazi Mpya screen
              Navigator.pop(context);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const KaziMpya()));
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.calender_2,
            title: "Kazi Zilizopita.",
            onTap: () {
              // Migrating to Kazi Zilizopita screen
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const KaziZilizopita()));
            },
          ),
          DrawerListTile(
              icon: TernavIcons.lightOutline.document,
              title: "Ripoti.",
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Ripoti()));
              }),
          DrawerListTile(
            icon: TernavIcons.lightOutline.settings,
            title: "Kuhusu Mashine.",
            onTap: () {
              // Migrating to Kuhusu Mashine screen
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const KuhusuMashine()));
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "images/waterdrop.png",
            height: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
                color: kLightBlue, borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("Rudi Nyuma",
                        style: TextStyle(
                          color: kDarkBlue,
                        )),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MainScreen()));
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: kDarkBlue),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.keyboard_double_arrow_left_rounded,
                          color: kDarkBlue,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0,
      leading: Icon(
        icon,
        color: Colors.grey,
        size: 18,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}