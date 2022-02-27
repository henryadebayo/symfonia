import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:symfonia/services/get_crypto_prices_services.dart';

part 'coingecko_event.dart';
part 'coingecko_state.dart';

class CoingeckoBloc extends Bloc<CoingeckoEvent, CoingeckoState> {
  final CoingeckoServices coingeckoServices;
  CoingeckoBloc({required this.coingeckoServices})
      : super(const CoingeckoGetPrice(isLoading: true)) {
    on<CoingeckoGetPriceEvent>((event, emit) async {
      await coingeckoServices.getCrytoPrices();
      emit(const CoingeckoLoaded(isLoading: false));
    });
    on<CoingeckoLoadedEvent>((event, emit) {
      emit(const CoingeckoLoaded(isLoading: false));
    });
    on<NetworkExceptionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
