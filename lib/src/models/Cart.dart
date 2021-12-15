import 'models.dart';

// part 'Cart.g.dart';

/// Classe Cart da documentação oficial Cielo Ecommerce
class Cart {
  bool? isGift;
  bool? returnsAccepted;
  List<Items>? items;

  Cart({this.isGift, this.returnsAccepted, this.items});

  Map<String, dynamic> toMap() {
    return {
      'IsGift': isGift,
      'ReturnsAccepted': returnsAccepted,
      'Items': items?.map((x) => x.toMap()).toList(),
    };
  }

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
      isGift: map['IsGift'],
      returnsAccepted: map['ReturnsAccepted'],
      items: map['Items'] != null
          ? List<Items>.from(map['Items']?.map((x) => Items.fromMap(x)))
          : null,
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Cart.fromJson(String source) => Cart.fromMap(json.decode(source));
}
