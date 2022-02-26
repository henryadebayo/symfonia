import 'package:flutter/material.dart';


class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key,}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("History", style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0
        ),),
        actions: [
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.sort, color: Colors.black,))
            ],
          )
        ],
      ),
      body:ListView.builder(
        itemCount: 20,
          itemBuilder: (BuildContext context , int index){
        return ListTile();
      }),
    );
  }
}
