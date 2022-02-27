import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:symfonia/models/crypto_model.dart';

part 'coingecko_state.dart';

class CoingeckoCubit extends Cubit<CoingeckoState> {
  CoingeckoCubit() : super(CoingeckoInitial());
}
