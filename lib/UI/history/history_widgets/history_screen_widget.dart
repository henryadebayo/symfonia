import 'package:flutter/material.dart';

class history_screen_widget extends StatelessWidget {
  const history_screen_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
  }
}
