import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:symfonia/data/services/get_crypto_prices_services.dart';

class history_screen_widget extends StatelessWidget {
  CoingeckoServices? coingeckoServices;
  String? coinName;
  String ath;
  String coinPrice;
  String coinImageUrl;
  history_screen_widget({

    required this.ath,
    required this.coinImageUrl,
    this.coinName,
    required this.coinPrice,
    this.coingeckoServices,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Column(
        children: [
          Material(
            //elevation: 2.0,
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.network(coinImageUrl,height: 50.0, width: 50.0,),
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
                              ath,
                              style: const TextStyle(color: Colors.lightGreen),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    coinPrice,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.0,)
        ],
      ),
    );
  }
}
