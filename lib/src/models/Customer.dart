import 'models.dart';

// part 'Customer.g.dart';

/// Classe Customer da documentação oficial Cielo Ecommerce
class Customer {
  String? name;
  String? identity;
  String? identityType;
  String? email;
  String? birthdate;
  Address? address;
  DeliveryAddress? deliveryAddress;
  BillingAddress? billingAddress;
  String? phone;
  String? mobile;

  Customer({
    this.name,
    this.identity,
    this.identityType,
    this.email,
    this.birthdate,
    this.address,
    this.deliveryAddress,
    this.billingAddress,
    this.phone,
    this.mobile,
  });

  Map<String, dynamic> toMap() {
    return {
      'Name': name,
      'Identity': identity,
      'IdentityType': identityType,
      'Email': email,
      'Birthdate': birthdate,
      'Address': address?.toMap(),
      'DeliveryAddress': deliveryAddress?.toMap(),
      'BillingAddress': billingAddress?.toMap(),
      'Phone': phone,
      'Mobile': mobile,
    };
  }

  factory Customer.fromMap(Map<String, dynamic> map) {
    return Customer(
      name: map['Name'],
      identity: map['Identity'],
      identityType: map['IdentityType'],
      email: map['Email'],
      birthdate: map['Birthdate'],
      address: map['Address'] != null ? Address.fromMap(map['Address']) : null,
      deliveryAddress: map['DeliveryAddress'] != null
          ? DeliveryAddress.fromMap(map['DeliveryAddress'])
          : null,
      billingAddress: map['BillingAddress'] != null
          ? BillingAddress.fromMap(map['BillingAddress'])
          : null,
      phone: map['Phone'],
      mobile: map['Mobile'],
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Customer.fromJson(String source) =>
  //     Customer.fromMap(json.decode(source));
}
