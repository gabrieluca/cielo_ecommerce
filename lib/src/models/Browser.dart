// part 'Browser.g.dart';

/// Classe Browser da documentação oficial Cielo Ecommerce
class Browser {
  String? hostName;
  bool? cookiesAccepted;
  String? email;
  String? type;
  String? ipAddress;

  Browser({
    this.hostName,
    this.cookiesAccepted,
    this.email,
    this.type,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return {
      'HostName': hostName,
      'CookiesAccepted': cookiesAccepted,
      'Email': email,
      'Type': type,
      'IpAddress': ipAddress,
    };
  }

  factory Browser.fromMap(Map<String, dynamic> map) {
    return Browser(
      hostName: map['HostName'],
      cookiesAccepted: map['CookiesAccepted'],
      email: map['Email'],
      type: map['Type'],
      ipAddress: map['IpAddress'],
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Browser.fromJson(String source) => Browser.fromMap(json.decode(source));
}
