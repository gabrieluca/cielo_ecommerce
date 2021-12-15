/// Classe Additional Data da documentação oficial Cielo Ecommerce
class AdditionalData {
  String? signature;

  AdditionalData({
    this.signature,
  });

  Map<String, dynamic> toMap() {
    return {
      'Signature': signature,
    };
  }

  factory AdditionalData.fromMap(Map<String, dynamic> map) {
    return AdditionalData(
      signature: map['Signature'],
    );
  }

  // String toJson() => json.encode(toMap());

  // factory AdditionalData.fromJson(String source) =>
  //     AdditionalData.fromMap(json.decode(source));
}
