import 'package:equatable/equatable.dart';

class PriceCoinsCubitState extends Equatable {
  const PriceCoinsCubitState({
    required this.btcPrice,
    required this.ethPrice,
    required this.tonPrice,
  });

  final String btcPrice;
  final String ethPrice;
  final String tonPrice;

  PriceCoinsCubitState copyWith({
    String? btcPrice,
    String? ethPrice,
    String? tonPrice,
  }) {
    return PriceCoinsCubitState(
      btcPrice: btcPrice ?? this.btcPrice,
      ethPrice: ethPrice ?? this.ethPrice,
      tonPrice: tonPrice ?? this.tonPrice,
    );
  }

  @override
  List<Object?> get props => [btcPrice, ethPrice, tonPrice];
}
