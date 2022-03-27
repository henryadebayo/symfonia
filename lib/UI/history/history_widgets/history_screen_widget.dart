import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:symfonia/data/services/get_crypto_prices_services.dart';

class history_screen_widget extends StatelessWidget {
  CoingeckoServices? coingeckoServices;
  String? coinName;
  String symbol;
  double change;
  double changePercent;
  String coinPrice;
  String coinImageUrl;
  history_screen_widget({

    required this.symbol,
    required this.change,
    required this.changePercent,
    required this.coinImageUrl,
    this.coinName,
    required this.coinPrice,
    this.coingeckoServices,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFF5F5F5),
                  offset: Offset(4,4),
                  blurRadius: 10.0,
                  spreadRadius:1,
                ),
                BoxShadow(
                  color: Color(0xFFFAFaFA),
                  offset: Offset(-4, -4),
                  blurRadius: 10.0,
                  spreadRadius:1,
                ),
              ]
            ),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 50.0, width: 50.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0xFFF5F5F5),
                                  offset: Offset(4,4),
                                  blurRadius: 10.0,
                                  spreadRadius:1,
                                ),
                                BoxShadow(
                                  color: Color(0xFFFAFaFA),
                                  offset: Offset(-4, -4),
                                  blurRadius: 10.0,
                                  spreadRadius:1,
                                ),
                              ]
                          ),
                          child: Padding(padding: const EdgeInsets.all(10.0),
                          child: Image.network(coinImageUrl, fit: BoxFit.cover))),
                    ),
                   const SizedBox(width: 8.0,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            coinName!,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          Text(
                            symbol,
                            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "\u0024 $coinPrice",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                      ),
                      Text('%'+change.toString(),
                        style: TextStyle(color: change.toDouble() < 0 ? Colors.red : Colors.green),),
                      Text(changePercent.toDouble() < 0 ? '-' + changePercent.toDouble.toString(), style: TextStyle(color: changePercent.toDouble() < 0 ? Colors.red : Colors.green),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10.0,)
      ],
    );
  }
}
