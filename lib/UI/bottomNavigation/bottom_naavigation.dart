import 'package:flutter/material.dart';
import 'package:symfonia/UI/history/home_screen.dart';
import 'package:symfonia/UI/notification/notification_screen.dart';
import 'package:symfonia/UI/profile/profile_screen.dart';
import 'package:symfonia/UI/web/web_screen.dart';





class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentTabIndex = 0;
  List<Widget> pages = [
    const HomeScreen(),
   const  WebScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTabIndex,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        onTap: (index){
          setState(() {
            currentTabIndex = index;
          });
        },
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined),
          title: CircleAvatar(radius: 5.0,),
        ),
        BottomNavigationBarItem(icon: Icon(Icons.next_plan),
          title: CircleAvatar(radius: 5.0,),),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined),
          title: CircleAvatar(radius: 5.0,),),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined),
          title: CircleAvatar(radius: 5.0,),),
      ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
      ),
      body: pages[currentTabIndex],
    );
  }
}
