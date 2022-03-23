import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:symfonia/data/models/crypto_model.dart';
import 'package:symfonia/data/services/get_crypto_prices_services.dart';

part 'coingecko_event.dart';
part 'coingecko_state.dart';

class CoingeckoBloc extends Bloc<CoingeckoEvent, CoingeckoState> {
  final CoingeckoServices coingeckoServices;

  CoingeckoBloc({required this.coingeckoServices})
      : super(const CoingeckoGetPrice()){
    on<CoingeckoGetPriceEvent>((event, emit)async {
      try {
        print(" fun is called ");
        final prices = await coingeckoServices.getCrytoPrices();
        emit( CoingeckoLoaded(
          prices!,
        ),
        );
      } catch (e) {
        emit(
            NetworkException("${e.toString()}")
        );
      }
    });
    add(CoingeckoGetPriceEvent());
  }
}
