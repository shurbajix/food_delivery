import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'images/home.png',
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('images/heart.png'),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'images/face.png',
          ),
          label: 'Account',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'images/more.png',
          ),
          label: 'More',
          backgroundColor: const Color(0xff667C8A),
        ),
      ],
      unselectedItemColor: const Color(0xff667C8A),
      selectedItemColor: const Color(0xffC8161D),
    );
  }
}
