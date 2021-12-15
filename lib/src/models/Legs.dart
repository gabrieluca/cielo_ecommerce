class Legs {
  String? destination;
  String? origin;

  Legs({
    this.destination,
    this.origin,
  });

  Map<String, dynamic> toMap() {
    return {
      'Destination': destination,
      'Origin': origin,
    };
  }

  factory Legs.fromMap(Map<String, dynamic> map) {
    return Legs(
      destination: map['Destination'],
      origin: map['Origin'],
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Legs.fromJson(String source) => Legs.fromMap(json.decode(source));
}
