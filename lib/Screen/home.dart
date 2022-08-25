import 'package:flutter/material.dart';

import '../Appconstant/imagefile.dart';
import '../Tab/home.dart';
import '../Tab/inbox.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List bottomNavigationBar = [
    'assest/home.png',
    'assest/bank.png',
    'assest/card.png',
    'assest/inbox.png',
  ];
  // ignore: prefer_const_constructors
  List screens = [const HomeTab(), Text('j'), Text('j'), InboxTab()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.clrBlack,
        body: screens[currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: AppColor.clrWhite54))),
          child: BottomNavigationBar(
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            currentIndex: currentIndex,
            unselectedItemColor: Colors.white60,
            selectedItemColor: AppColor.clrWhite,
            iconSize: 25,
            backgroundColor: AppColor.clrBlack,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: ImageIcon(
                  AssetImage('assest/home.png'),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Bank',
                icon: ImageIcon(
                  AssetImage('assest/bank.png'),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Card',
                icon: ImageIcon(
                  AssetImage('assest/card.png'),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Inbox',
                icon: ImageIcon(
                  AssetImage('assest/inbox.png'),
                ),
              ),
            ],
          ),
        ));
  }
}
