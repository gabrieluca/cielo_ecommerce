import 'models.dart';

// part 'Wallet.g.dart';

/// Classe Wallet da documentação oficial Cielo Ecommerce
class Wallet {
  String? type;
  String? walletKey;
  AdditionalData? additionalData;

  Wallet({
    this.type,
    this.walletKey,
    this.additionalData,
  });

  Map<String, dynamic> toMap() {
    return {
      'Type': type,
      'WalletKey': walletKey,
      'AdditionalData': additionalData?.toMap(),
    };
  }

  factory Wallet.fromMap(Map<String, dynamic> map) {
    return Wallet(
      type: map['Type'],
      walletKey: map['WalletKey'],
      additionalData: map['AdditionalData'] != null
          ? AdditionalData.fromMap(map['AdditionalData'])
          : null,
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Wallet.fromJson(String source) => Wallet.fromMap(json.decode(source));
}
