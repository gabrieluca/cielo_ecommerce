import 'models.dart';

// part 'Items.g.dart';

/// Classe Items da documentação oficial Cielo Ecommerce
class Items {
  dynamic giftCategory;
  dynamic hostHedge;
  dynamic nonSensicalHedge;
  dynamic obscenitiesHedge;
  dynamic phoneHedge;
  String? name;
  int? quantity;
  String? sku;
  int? unitPrice;
  dynamic risk;
  dynamic timeHedge;
  dynamic type;
  dynamic velocityHedge;
  int? originalPrice;
  int? weight;
  int? cartType;
  Passenger? passenger;

  Items({
    this.giftCategory,
    this.hostHedge,
    this.nonSensicalHedge,
    this.obscenitiesHedge,
    this.phoneHedge,
    this.name,
    this.quantity,
    this.sku,
    this.unitPrice,
    this.risk,
    this.timeHedge,
    this.type,
    this.velocityHedge,
    this.originalPrice,
    this.weight,
    this.cartType,
    this.passenger,
  });

  Map<String, dynamic> toMap() {
    return {
      'GiftCategory': giftCategory,
      'HostHedge': hostHedge,
      'NonSensicalHedge': nonSensicalHedge,
      'ObscenitiesHedge': obscenitiesHedge,
      'PhoneHedge': phoneHedge,
      'Name': name,
      'Quantity': quantity,
      'Sku': sku,
      'UnitPrice': unitPrice,
      'Risk': risk,
      'TimeHedge': timeHedge,
      'Type': type,
      'VelocityHedge': velocityHedge,
      'OriginalPrice': originalPrice,
      'Weight': weight,
      'CartType': cartType,
      'Passenger': passenger?.toMap(),
    };
  }

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      giftCategory: map['GiftCategory'] ?? null,
      hostHedge: map['HostHedge'] ?? null,
      nonSensicalHedge: map['NonSensicalHedge'] ?? null,
      obscenitiesHedge: map['ObscenitiesHedge'] ?? null,
      phoneHedge: map['PhoneHedge'] ?? null,
      name: map['Name'],
      quantity: map['Quantity']?.toInt(),
      sku: map['Sku'],
      unitPrice: map['UnitPrice']?.toInt(),
      risk: map['Risk'] ?? null,
      timeHedge: map['TimeHedge'] ?? null,
      type: map['Type'] ?? null,
      velocityHedge: map['VelocityHedge'] ?? null,
      originalPrice: map['OriginalPrice']?.toInt(),
      weight: map['Weight']?.toInt(),
      cartType: map['CartType']?.toInt(),
      passenger:
          map['Passenger'] != null ? Passenger.fromMap(map['Passenger']) : null,
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Items.fromJson(String source) => Items.fromMap(json.decode(source));
}
