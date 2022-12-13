import 'package:flutter/material.dart';
import 'package:instagram/screens/add_screen.dart';
import 'package:instagram/screens/home_screen.dart';
import 'package:instagram/screens/notifications_screen.dart';
import 'package:instagram/screens/profile_screen.dart';
import 'package:instagram/screens/search_screen.dart';
import 'package:instagram/widgets/post_avatar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            print(index);
            setState(
              () {
                selectedIndex = index;
              },
            );
          },
          selectedIconTheme: IconThemeData(color: Color(0XFFF35383), size: 30),
          unselectedIconTheme: IconThemeData(size: 30),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'tab1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'tab2',
            ),
            BottomNavigationBarItem(
              icon: selectedIndex == 2
                  ? Icon(Icons.add_box)
                  : Icon(Icons.add_box_outlined),
              label: 'tab3',
            ),
            BottomNavigationBarItem(
              icon: selectedIndex == 3
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border),
              label: 'tab4',
            ),
            BottomNavigationBarItem(
              icon: getAvatar(),
              label: 'tab4',
            ),
          ],
        ),
        body: IndexedStack(
          index: selectedIndex,
          children: getScreens(),
        ));
  }

  List<Widget> getScreens() {
    return [
      HomeScreen(),
      SearchScreen(),
      AddScreen(),
      NotificationScreen(),
      ProfileScreen(),
    ];
  }
}
