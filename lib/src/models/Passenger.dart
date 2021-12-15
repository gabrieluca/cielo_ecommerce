/// Classe Passenger da documentação oficial Cielo Ecommerce
class Passenger {
  String? name;
  String? identity;
  String? status;
  String? rating;
  String? email;
  String? phone;
  String? passengerType;

  Passenger({
    this.name,
    this.identity,
    this.status,
    this.rating,
    this.email,
    this.phone,
    this.passengerType,
  });

  Map<String, dynamic> toMap() {
    return {
      'Name': name,
      'Identity': identity,
      'Status': status,
      'Rating': rating,
      'Email': email,
      'Phone': phone,
      'PassengerType': passengerType,
    };
  }

  factory Passenger.fromMap(Map<String, dynamic> map) {
    return Passenger(
      name: map['Name'],
      identity: map['Identity'],
      status: map['Status'],
      rating: map['Rating'],
      email: map['Email'],
      phone: map['Phone'],
      passengerType: map['PassengerType'],
    );
  }
}
