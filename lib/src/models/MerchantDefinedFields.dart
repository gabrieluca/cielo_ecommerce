// part 'MerchantDefinedFields.g.dart';

/// Classe Merchant Defined Fields da documentação oficial Cielo Ecommerce
class MerchantDefinedFields {
  dynamic id;
  String? value;

  MerchantDefinedFields({this.id, this.value});

  Map<String, dynamic> toMap() {
    return {
      'Id': id,
      'Value': value,
    };
  }

  factory MerchantDefinedFields.fromMap(Map<String, dynamic> map) {
    return MerchantDefinedFields(
      id: map['Id'] ?? null,
      value: map['Value'],
    );
  }

  // String toJson() => json.encode(toMap());

  // factory MerchantDefinedFields.fromJson(String source) => MerchantDefinedFields.fromMap(json.decode(source));
}
