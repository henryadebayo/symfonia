import 'package:flutter/material.dart';
import 'package:symfonia/UI/home/home.dart';





class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentTabIndex = 0;
  List<Widget> pages = [
    const HistoryScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTabIndex,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.grey),

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
    );
  }
}
