import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_khalti/pages/qr.dart';
import 'package:my_khalti/pages/support.dart';
import 'package:my_khalti/pages/transaction.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void _handleSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      Transaction(),
      Support(),
      Support(),
      Support(),
      Support(),
    ];
  }

  // int tabselectedIndex = 0;
  // void _handleTabSelection(int tabIndex) {
  //   setState(() {
  //     tabselectedIndex = tabIndex;
  //   });

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
          icon: Icon(Icons.home),
          title: "Home",
          inactiveColorPrimary: Colors.grey.shade600,
          activeColorPrimary: Colors.purple),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.phone_in_talk_sharp),
          title: "Support",
          inactiveColorPrimary: Colors.grey.shade600,
          activeColorPrimary: Colors.purple),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.qr_code),
          inactiveColorPrimary: Colors.grey,
          title: "Scan & pay",
          activeColorPrimary: Colors.purple),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.note_alt),
          title: "Transactions",
          inactiveColorPrimary: Colors.grey.shade600,
          activeColorPrimary: Colors.purple),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.menu),
          title: "Menu",
          inactiveColorPrimary: Colors.grey.shade600,
          activeColorPrimary: Colors.purple),
      // PersistentBottomNavBarItem(
      //     icon: Icon(Icons.menu),
      //     title: "Menu",
      //     inactiveColorPrimary: Colors.grey.shade600,
      //     activeColorPrimary: Colors.purple)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      backgroundColor: const Color.fromARGB(255, 230, 226, 226),
      context,
      screens: _buildScreens(),
      controller: _controller,
      items: _navBarItems(),
      confineToSafeArea: true,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      decoration: NavBarDecoration(borderRadius: BorderRadius.circular(0.5)),
      // navBarStyle: NavBarStyle.style17,
      navBarStyle:
          selectedIndex == 0 ? NavBarStyle.style17 : NavBarStyle.simple,
      // stores the current index of navbaritems
      onItemSelected: (int selectedIndex) {
        _handleSelectedIndex(selectedIndex);
      },
    );
  }
}
