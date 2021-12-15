import 'models.dart';

// part 'Payment.g.dart';

/// Classe Payment da documentação oficial Cielo Ecommerce
class Payment {
  int? serviceTaxAmount;
  int? installments;
  dynamic interest;
  bool? capture;
  bool? authenticate;
  bool? recurrent;
  CreditCard? creditCard;
  Wallet? wallet;
  String? tid;
  String? proofOfSale;
  String? authorizationCode;
  String? softDescriptor;
  String? provider;
  FraudAnalysis? fraudAnalysis;
  bool? isQrCode;
  int? amount;
  String? receivedDate;
  int? status;
  bool? isSplitted;
  String? returnMessage;
  String? returnCode;
  String? paymentId;
  String? type;
  String? currency;
  String? country;
  List<Link>? links;
  String? capturedDate;
  int? capturedAmount;
  String? voidedDate;
  int? voidedAmount;
  String? address;
  String? boletoNumber;
  String? assignor;
  String? demonstrative;
  String? expirationDate;
  String? identification;
  String? instructions;
  String? url;
  String? barCodeNumber;
  String? digitableLine;
  int? bank;

  Payment({
    this.serviceTaxAmount,
    this.installments,
    this.interest,
    this.capture,
    this.authenticate,
    this.recurrent,
    this.creditCard,
    this.wallet,
    this.tid,
    this.proofOfSale,
    this.authorizationCode,
    this.softDescriptor,
    this.provider,
    this.fraudAnalysis,
    this.isQrCode,
    this.amount,
    this.receivedDate,
    this.status,
    this.isSplitted,
    this.returnMessage,
    this.returnCode,
    this.paymentId,
    this.type,
    this.currency,
    this.country,
    this.links,
    this.capturedDate,
    this.capturedAmount,
    this.voidedDate,
    this.voidedAmount,
    this.address,
    this.boletoNumber,
    this.assignor,
    this.demonstrative,
    this.expirationDate,
    this.identification,
    this.instructions,
    this.url,
    this.digitableLine,
    this.barCodeNumber,
    this.bank,
  });

  Map<String, dynamic> toMap() {
    return {
      'ServiceTaxAmount': serviceTaxAmount,
      'Installments': installments,
      'Interest': interest,
      'Capture': capture,
      'Authenticate': authenticate,
      'Recurrent': recurrent,
      'CreditCard': creditCard?.toMap(),
      'Wallet': wallet?.toMap(),
      'Tid': tid,
      'ProofOfSale': proofOfSale,
      'AuthorizationCode': authorizationCode,
      'SoftDescriptor': softDescriptor,
      'Provider': provider,
      'FraudAnalysis': fraudAnalysis?.toMap(),
      'IsQrCode': isQrCode,
      'Amount': amount,
      'ReceivedDate': receivedDate,
      'Status': status,
      'IsSplitted': isSplitted,
      'ReturnMessage': returnMessage,
      'ReturnCode': returnCode,
      'PaymentId': paymentId,
      'Type': type,
      'Currency': currency,
      'Country': country,
      'Links': links?.map((x) => x.toMap()).toList(),
      'CapturedDate': capturedDate,
      'CapturedAmount': capturedAmount,
      'VoidedDate': voidedDate,
      'VoidedAmount': voidedAmount,
      'Address': address,
      'BoletoNumber': boletoNumber,
      'Assignor': assignor,
      'Demonstrative': demonstrative,
      'ExpirationDate': expirationDate,
      'Identification': identification,
      'Instructions': instructions,
      'Url': url,
      'BarCodeNumber': barCodeNumber,
      'DigitableLine': digitableLine,
      'Bank': bank,
    };
  }

  factory Payment.fromMap(Map<String, dynamic> map) {
    return Payment(
      serviceTaxAmount: map['ServiceTaxAmount']?.toInt(),
      installments: map['Installments']?.toInt(),
      interest: map['Interest'] ?? null,
      capture: map['Capture'],
      authenticate: map['Authenticate'],
      recurrent: map['Recurrent'],
      creditCard: map['CreditCard'] != null
          ? CreditCard.fromMap(map['CreditCard'])
          : null,
      wallet: map['Wallet'] != null ? Wallet.fromMap(map['Wallet']) : null,
      tid: map['Tid'],
      proofOfSale: map['ProofOfSale'],
      authorizationCode: map['AuthorizationCode'],
      softDescriptor: map['SoftDescriptor'],
      provider: map['Provider'],
      // fraudAnalysis: map['fraudAnalysis'] != null ? FraudAnalysis.fromMap(map['fraudAnalysis']) : null,
      isQrCode: map['IsQrCode'],
      amount: map['Amount']?.toInt(),
      receivedDate: map['ReceivedDate'],
      status: map['Status']?.toInt(),
      isSplitted: map['IsSplitted'],
      returnMessage: map['ReturnMessage'],
      returnCode: map['ReturnCode'],
      paymentId: map['PaymentId'],
      type: map['Type'],
      currency: map['Currency'],
      country: map['Country'],
      links: map['Links'] != null
          ? List<Link>.from(map['Links']?.map((x) => Link.fromMap(x)))
          : null,
      capturedDate: map['CapturedDate'],
      capturedAmount: map['CapturedAmount']?.toInt(),
      voidedDate: map['VoidedDate'],
      voidedAmount: map['VoidedAmount']?.toInt(),
      address: map['Address'],
      boletoNumber: map['BoletoNumber'],
      assignor: map['Assignor'],
      demonstrative: map['Demonstrative'],
      expirationDate: map['ExpirationDate'],
      identification: map['Identification'],
      instructions: map['Instructions'],
      url: map['Url'],
      barCodeNumber: map['BarCodeNumber'],
      digitableLine: map['DigitableLine'],
      bank: map['Bank']?.toInt(),
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Payment.fromJson(String source) =>
  //     Payment.fromMap(json.decode(source));
}

class TypePayment {
  static String get creditCard => 'CreditCard';

  static String get boleto => 'Boleto';

  static String get androidPay => 'AndroidPay';
}
