// part 'ReplyData.g.dart';

/// Classe Reply Data da documentação oficial Cielo Ecommerce
class ReplyData {
  String? addressInfoCode;
  String? factorCode;
  int? score;
  String? binCountry;
  String? cardIssuer;
  String? cardScheme;
  int? hostSeverity;
  String? internetInfoCode;
  String? ipRoutingMethod;
  String? scoreModelUsed;
  int? casePriority;
  String? providerTransactionId;
  String? velocityInfoCode;

  ReplyData({
    this.addressInfoCode,
    this.factorCode,
    this.score,
    this.binCountry,
    this.cardIssuer,
    this.cardScheme,
    this.hostSeverity,
    this.internetInfoCode,
    this.ipRoutingMethod,
    this.scoreModelUsed,
    this.casePriority,
    this.providerTransactionId,
    this.velocityInfoCode,
  });

  Map<String, dynamic> toMap() {
    return {
      'AddressInfoCode': addressInfoCode,
      'FactorCode': factorCode,
      'Score': score,
      'BinCountry': binCountry,
      'CardIssuer': cardIssuer,
      'CardScheme': cardScheme,
      'HostSeverity': hostSeverity,
      'InternetInfoCode': internetInfoCode,
      'IpRoutingMethod': ipRoutingMethod,
      'ScoreModelUsed': scoreModelUsed,
      'CasePriority': casePriority,
      'ProviderTransactionId': providerTransactionId,
      'VelocityInfoCode': velocityInfoCode,
    };
  }

  factory ReplyData.fromMap(Map<String, dynamic> map) {
    return ReplyData(
      addressInfoCode: map['AddressInfoCode'],
      factorCode: map['FactorCode'],
      score: map['Score']?.toInt(),
      binCountry: map['BinCountry'],
      cardIssuer: map['CardIssuer'],
      cardScheme: map['CardScheme'],
      hostSeverity: map['HostSeverity']?.toInt(),
      internetInfoCode: map['InternetInfoCode'],
      ipRoutingMethod: map['IpRoutingMethod'],
      scoreModelUsed: map['ScoreModelUsed'],
      casePriority: map['CasePriority']?.toInt(),
      providerTransactionId: map['ProviderTransactionId'],
      velocityInfoCode: map['VelocityInfoCode'],
    );
  }

  // String toJson() => json.encode(toMap());

  // factory ReplyData.fromJson(String source) => ReplyData.fromMap(json.decode(source));
}
