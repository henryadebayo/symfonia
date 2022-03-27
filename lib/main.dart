import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symfonia/UI/bottomNavigation/bottom_naavigation.dart';
import 'package:symfonia/bloc/coingecko_bloc.dart';

import 'data/services/get_crypto_prices_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
   //   darkTheme: ThemeData.dark(),
      home: BlocProvider<CoingeckoBloc>(
        create: (context) =>
            CoingeckoBloc(coingeckoServices: CoingeckoServices())
              ..add(
                  CoingeckoGetPriceEvent()
              ),
        child: const BottomNavigationScreen(),
      ),
    );
  }
}
