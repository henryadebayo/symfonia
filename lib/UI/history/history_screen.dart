import 'package:flutter/cupertino.dart';
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
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("History", style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.sort, color: Colors.black,),),
                Text("Sort/Filter", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),)
              ],
            ),
          )
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
          itemCount: 20,
            itemBuilder: (BuildContext context , int index){
          return Container(
            height: 150.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 100.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(image: NetworkImage("https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579")
                        ),
                      ),
                    ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bitcoin", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                              Text("price", style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ),
                  ],
                ),
                Text("price", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 17.0),),
              ],
            ),
          );
        }),
      ),
    );
  }
}
