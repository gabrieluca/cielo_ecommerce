// part 'BillingAddress.g.dart';

/// Classe BillingAddress da documentação oficial Cielo Ecommerce
class BillingAddress {
  String? street;
  String? number;
  String? complement;
  String? zipCode;
  String? city;
  String? state;
  String? country;
  String? district;

  BillingAddress({
    this.street,
    this.number,
    this.complement,
    this.zipCode,
    this.city,
    this.state,
    this.country,
    this.district,
  });

  Map<String, dynamic> toMap() {
    return {
      'Street': street,
      'Number': number,
      'Complement': complement,
      'ZipCode': zipCode,
      'City': city,
      'State': state,
      'Country': country,
      'District': district,
    };
  }

  factory BillingAddress.fromMap(Map<String, dynamic> map) {
    return BillingAddress(
      street: map['Street'],
      number: map['Number'],
      complement: map['Complement'],
      zipCode: map['ZipCode'],
      city: map['City'],
      state: map['State'],
      country: map['Country'],
      district: map['District'],
    );
  }

  // String toJson() => json.encode(toMap());

  // factory BillingAddress.fromJson(String source) =>
  //     BillingAddress.fromMap(json.decode(source));
}
