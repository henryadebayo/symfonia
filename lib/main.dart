import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symfonia/UI/bottomNavigation/bottom_naavigation.dart';
import 'package:symfonia/bloc/coingecko_bloc.dart';
import 'package:symfonia/services/get_crypto_prices_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<CoingeckoBloc>(
        create: (context) =>
            CoingeckoBloc(coingeckoServices: CoingeckoServices()),
        child: const BottomNavigationScreen(),
      ),
    );
  }
}
