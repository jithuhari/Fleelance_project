import 'package:flutter/material.dart';
import 'package:freelance_project/screens/navbarscreens/homeScreens/home_screen.dart';

class BottamNavBar extends StatefulWidget {
  const BottamNavBar({Key? key}) : super(key: key);

  @override
  State<BottamNavBar> createState() => _BottamNavBarState();
}

class _BottamNavBarState extends State<BottamNavBar> {

  final screens = [
    HomeScreen(),
    Center(child: Text('Cart'),),
    Center(child: Text('fav'),),
    Center(child: Text('acc'),),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        iconSize: 30,
        onTap: (index)=>
        setState(()=> 
           currentIndex = index,
        ),
       
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Shop',
            backgroundColor: Colors.green
            
          ),
           BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined
            ),
            label: 'Cart'
          ),
           BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
            ),
            label: 'Favourite'
          ),
           BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            label: 'Account'
          ),
        ],
      ),
    );
  }
}
