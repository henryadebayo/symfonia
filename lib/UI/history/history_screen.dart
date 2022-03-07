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
  @override
  void initState() {
    context.read<CoingeckoBloc>().add(CoingeckoGetPriceEvent());
    super.initState();
  }

  late final CoinGeckoModel coinGeckoModel;
  late final CoingeckoServices coingeckoServices;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoingeckoBloc, CoingeckoState>(
     builder: (context, state) {
      if (state.isLoading ) {
        return CircularProgressIndicator();
        }else if(state is CoingeckoLoaded){
        return
          Scaffold(
          backgroundColor: Colors.white10,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            title:const Text(
              "History",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.sort,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Sort/Filter",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )
                  ],
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView.builder(
                itemCount: coingeckoServices.cyptoData.length,
                itemBuilder: (BuildContext context, int index) {
                  return history_screen_widget(
                      coinName: coingeckoServices.cyptoData[index].);
                }),
          ),
        );
      } else if (state is CoingeckoGetPrice) {
        Scaffold(
          backgroundColor: Colors.white10,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            title: Text(
              "History",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.sort,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Sort/Filter",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )
                  ],
                ),
              )
            ],
          ),
          body: Center(
            child: Container(),
          ),
        );
      }
      // throw "An Error occoured ";
       return const  Center(child: const CircularProgressIndicator());
    });
  }
}
