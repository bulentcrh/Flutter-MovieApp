import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../Pages/home_page.dart';
import '../Pages/likes_page.dart';

class ModernBottomNavBar extends StatelessWidget {
  const ModernBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  GNav(
        backgroundColor: Color.fromARGB(255, 36, 36, 50),
        gap: 8,
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.red,
        padding: EdgeInsets.all(20),
        onTabChange: (index) {
           //Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        tabs: [
          GButton(
           icon: Icons.home, 
           text: "Home",
           onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          } ),
          GButton(
            icon: Icons.favorite_border, 
            text: "Likes",
            onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyWhatchList()));
          }),
          GButton(icon: Icons.settings, text: "Settings",),
          GButton(icon: Icons.account_circle_outlined, text: "Profile",),
        ]
       );
  }
}