import 'package:flutter/material.dart';
import 'package:symfonia/data/services/get_crypto_prices_services.dart';

class history_screen_widget extends StatelessWidget {
  CoingeckoServices? coingeckoServices;
  String? coinName;
  String coinPrice;
  String? coinImageUrl;
  history_screen_widget({
    this.coinImageUrl,
    this.coinName,
    required this.coinPrice,
    this.coingeckoServices,
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
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                      coinPrice,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Text(
            "price",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
          ),
        ],
      ),
    );
  }
}
