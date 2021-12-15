// part 'CreditCard.g.dart';

/// Classe Credit Card da documentação oficial Cielo Ecommerce
class CreditCard {
  String? cardNumber;
  String? holder;
  String? expirationDate;
  dynamic saveCard;
  String? securityCode;
  String? brand;
  String? customerName;
  String? cardToken;

  CreditCard({
    this.cardNumber,
    this.holder,
    this.expirationDate,
    this.saveCard,
    this.securityCode,
    this.brand,
    this.cardToken,
    this.customerName,
  });

  factory CreditCard.token(
      {String? cardToken, String? securityCode, String? brand}) {
    return CreditCard(
        cardToken: cardToken, securityCode: securityCode, brand: brand);
  }

  Map<String, dynamic> toMap() {
    return {
      'CardNumber': cardNumber,
      'Holder': holder,
      'ExpirationDate': expirationDate,
      'SaveCard': saveCard,
      'SecurityCode': securityCode,
      'Brand': brand,
      'CustomerName': customerName,
      'CardToken': cardToken,
    };
  }

  factory CreditCard.fromMap(Map<String, dynamic> map) {
    return CreditCard(
      cardNumber: map['CardNumber'],
      holder: map['Holder'],
      expirationDate: map['ExpirationDate'],
      saveCard: map['SaveCard'] ?? null,
      securityCode: map['SecurityCode'],
      brand: map['Brand'],
      customerName: map['CustomerName'],
      cardToken: map['CardToken'],
    );
  }

  // String toJson() => json.encode(toMap());

  // factory CreditCard.fromJson(String source) =>
  //     CreditCard.fromMap(json.decode(source));
}
