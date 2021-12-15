import 'models.dart';

// part 'Travel.g.dart';

/// Classe Travel da documentação oficial Cielo Ecommerce
class Travel {
  String? route;
  String? departureTime;
  String? journeyType;
  List<Legs>? legs;

  Travel({
    this.route,
    this.departureTime,
    this.journeyType,
    this.legs,
  });

  Map<String, dynamic> toMap() {
    return {
      'Route': route,
      'DepartureTime': departureTime,
      'JourneyType': journeyType,
      'Legs': legs?.map((x) => x.toMap()).toList(),
    };
  }

  factory Travel.fromMap(Map<String, dynamic> map) {
    return Travel(
      route: map['Route'],
      departureTime: map['DepartureTime'],
      journeyType: map['JourneyType'],
      legs: map['Legs'] != null
          ? List<Legs>.from(map['Legs']?.map((x) => Legs.fromMap(x)))
          : null,
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Travel.fromJson(String source) => Travel.fromMap(json.decode(source));
}
