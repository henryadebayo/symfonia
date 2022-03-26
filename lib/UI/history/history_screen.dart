
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symfonia/bloc/coingecko_bloc.dart';
import 'package:symfonia/data/models/crypto_model.dart';
import 'package:symfonia/data/services/get_crypto_prices_services.dart';

import 'history_widgets/history_screen_widget.dart';

class HistoryScreen extends StatefulWidget {
 const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {

  late final CoingeckoServices coingeckoServices;
  late final CoinGeckoModel coinGeckoModel;

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          "History",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.sort,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "Sort/Filter",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )
              ],
            ),
          )
        ],
      ),
      body: BlocConsumer<CoingeckoBloc, CoingeckoState>(listener: (context, state){}, builder: (context, state){
        if(state is CoingeckoGetPrice){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }else if(state is CoingeckoLoaded){
          return
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView.builder(
                    itemCount: state.price.length,
                    itemBuilder: (BuildContext context, int index) {
                      return history_screen_widget(
                          coinName: state.price[index].name.toString(), coinPrice: state.price[index].currentPrice.toString(), ath: state.price[index].ath.toString(), coinImageUrl: state.price[index].image.toString(),
                      );
                    }),
                );
        }else{
          return const Center(
            child: Text("opps sorry could not load data try again\nlater !", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
          );
        }
      }
      ,),
    );
  }
}