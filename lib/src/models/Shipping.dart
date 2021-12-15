// part 'Shipping.g.dart';

/// Classe Shipping da documentação oficial Cielo Ecommerce
class Shipping {
  //TODO Fix addressee
  String? addressee;
  String? phone;
  int? method;

  Shipping({this.addressee, this.phone, this.method});

  Map<String, dynamic> toMap() {
    return {
      'Addressee': addressee,
      'Phone': phone,
      'Method': method,
    };
  }

  factory Shipping.fromMap(Map<String, dynamic> map) {
    return Shipping(
      addressee: map['Addressee'],
      phone: map['Phone'],
      method: map['Method']?.toInt(),
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Shipping.fromJson(String source) => Shipping.fromMap(json.decode(source));
}
