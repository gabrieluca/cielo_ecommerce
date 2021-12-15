/// Classe Link da documentação oficial Cielo Ecommerce
class Link {
  String? method;
  String? rel;
  String? href;

  Link({
    this.method,
    this.rel,
    this.href,
  });

  Map<String, dynamic> toMap() {
    return {
      'Method': method,
      'Rel': rel,
      'Href': href,
    };
  }

  factory Link.fromMap(Map<String, dynamic> map) {
    return Link(
      method: map['Method'],
      rel: map['Rel'],
      href: map['Href'],
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Link.fromJson(String source) => Link.fromMap(json.decode(source));
}
