import 'package:claysys_portal/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  List pages = [
    HomePage(),

  ];

  int currentPageIndex = 0;
  void onTabTap(int index){
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: pages[0],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentPageIndex,
          onTap: onTabTap,
          elevation: 0,
          selectedItemColor: Colors.lightBlue,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 0,
          selectedFontSize: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items:[
            BottomNavigationBarItem(icon: Icon(IconlyBold.home, size: 30), label: 'home'),
            BottomNavigationBarItem(icon: Icon(IconlyLight.wallet, size: 30), label: 'home'),
            BottomNavigationBarItem(icon: Icon(IconlyLight.infoSquare, size: 30), label: 'home'),
            BottomNavigationBarItem(label: 'home', icon: ClipRRect(
               borderRadius: BorderRadius.circular(10),
               child: Image.asset(
               "assets/Profileimage.png",scale: 1.8,),
             ))
          ]),
    );
  }
}