import 'models.dart';

// part 'Sale.g.dart';

/// Classe Sale da documentação oficial Cielo Ecommerce
class Sale {
  String? merchantOrderId;
  Customer? customer;
  Payment? payment;

  Sale({
    this.merchantOrderId,
    this.customer,
    this.payment,
  }) {
    if (this.customer == null) this.customer = Customer();
    if (this.payment == null) this.payment = Payment();
  }

  Map<String, dynamic> toJson() {
    return {
      'MerchantOrderId': merchantOrderId,
      'Customer': customer?.toMap(),
      'Payment': payment?.toMap(),
    };
  }

  factory Sale.fromJson(Map<String, dynamic> map) {
    return Sale(
      merchantOrderId: map['MerchantOrderId'],
      customer:
          map['Customer'] != null ? Customer.fromMap(map['Customer']) : null,
      payment: map['Payment'] != null ? Payment.fromMap(map['Payment']) : null,
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Sale.fromJson(String source) => Sale.fromMap(json.decode(source));
}
