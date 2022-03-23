import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symfonia/bloc/coingecko_bloc.dart';
import 'package:symfonia/data/models/crypto_model.dart';
import 'package:symfonia/data/services/get_crypto_prices_services.dart';

import 'history_widgets/history_screen_widget.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  // @override
  // void initState() {
  //   context.read<CoingeckoBloc>().add(CoingeckoGetPriceEvent());
  //   super.initState();
  // }

  late final CoinGeckoModel coinGeckoModel;
  late final CoingeckoServices coingeckoServices;

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
      body: BlocBuilder<CoingeckoBloc, CoingeckoState>(builder: (context, state){
        return const CircularProgressIndicator();
        // if (state is CoingeckoGetPrice){
        //   return const Center(
        //     child: CircularProgressIndicator(),
        //   );
        // }
      },),
    );
  }
}
     // body:
    //       BlocBuilder<CoingeckoBloc,CoingeckoState>(builder: (context, state){
    //         if (state is CoingeckoGetPrice){
    //           return const Center(
    //             child: CircularProgressIndicator(),
    //           );
    //         }
    // }
    // }),



      //   if (state is CoingeckoGetPrice) {
      //     return const Center(child: CircularProgressIndicator());
      //   } else if (state is CoingeckoLoaded) {
      //     return
      //       Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 16.0),
      //       child: ListView.builder(
      //           itemCount: state.price.length,
      //           itemBuilder: (BuildContext context, int index) {
      //             return history_screen_widget(
      //                 coinName: state.price[index].name.toString());
      //           }),
      //     );
      //   }
      //   return const Center(child: CircularProgressIndicator());
      // }),
