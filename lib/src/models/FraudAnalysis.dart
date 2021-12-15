import 'models.dart';

/// Classe Fraud Analysis da documentação oficial Cielo Ecommerce
class FraudAnalysis {
  String? id;
  int? status;
  String? statusDescription;
  String? sequence;
  String? sequenceCriteria;
  int? totalOrderAmount;
  int? transactionAmount;
  String? fingerPrintId;
  List<MerchantDefinedFields>? merchantDefinedFields;
  Cart? cart;
  Travel? travel;
  Browser? browser;
  Shipping? shipping;
  bool? captureOnLowRisk;
  bool? voidOnHighRisk;
  String? provider;
  bool? isRetryTransaction;
  dynamic fraudAnalysisReasonCode;
  ReplyData? replyData;

  FraudAnalysis({
    this.id,
    this.status,
    this.statusDescription,
    this.sequence,
    this.sequenceCriteria,
    this.totalOrderAmount,
    this.transactionAmount,
    this.fingerPrintId,
    this.merchantDefinedFields,
    this.cart,
    this.travel,
    this.browser,
    this.shipping,
    this.captureOnLowRisk,
    this.voidOnHighRisk,
    this.provider,
    this.isRetryTransaction,
    this.fraudAnalysisReasonCode,
    this.replyData,
  });

  Map<String, dynamic> toMap() {
    return {
      'Id': id,
      'Status': status,
      'StatusDescription': statusDescription,
      'Sequence': sequence,
      'SequenceCriteria': sequenceCriteria,
      'TotalOrderAmount': totalOrderAmount,
      'TransactionAmount': transactionAmount,
      'FingerPrintId': fingerPrintId,
      'MerchantDefinedFields':
          merchantDefinedFields?.map((x) => x.toMap()).toList(),
      'Cart': cart?.toMap(),
      'Travel': travel?.toMap(),
      'Browser': browser?.toMap(),
      'Shipping': shipping?.toMap(),
      'CaptureOnLowRisk': captureOnLowRisk,
      'VoidOnHighRisk': voidOnHighRisk,
      'Provider': provider,
      'IsRetryTransaction': isRetryTransaction,
      'FraudAnalysisReasonCode': fraudAnalysisReasonCode,
      'ReplyData': replyData?.toMap(),
    };
  }

  factory FraudAnalysis.fromMap(Map<String, dynamic> map) {
    return FraudAnalysis(
      id: map['Id'],
      status: map['Status']?.toInt(),
      statusDescription: map['StatusDescription'],
      sequence: map['Sequence'],
      sequenceCriteria: map['SequenceCriteria'],
      totalOrderAmount: map['TotalOrderAmount']?.toInt(),
      transactionAmount: map['TransactionAmount']?.toInt(),
      fingerPrintId: map['FingerPrintId'],
      merchantDefinedFields: map['MerchantDefinedFields'] != null
          ? List<MerchantDefinedFields>.from(map['MerchantDefinedFields']
              ?.map((x) => MerchantDefinedFields.fromMap(x)))
          : null,
      cart: map['Cart'] != null ? Cart.fromMap(map['Cart']) : null,
      travel: map['Travel'] != null ? Travel.fromMap(map['Travel']) : null,
      browser: map['Browser'] != null ? Browser.fromMap(map['Browser']) : null,
      shipping:
          map['Shipping'] != null ? Shipping.fromMap(map['Shipping']) : null,
      captureOnLowRisk: map['CaptureOnLowRisk'],
      voidOnHighRisk: map['VoidOnHighRisk'],
      provider: map['Provider'],
      isRetryTransaction: map['IsRetryTransaction'],
      fraudAnalysisReasonCode: map['FraudAnalysisReasonCode'] ?? null,
      replyData:
          map['ReplyData'] != null ? ReplyData.fromMap(map['ReplyData']) : null,
    );
  }

  // String toJson() => json.encode(toMap());

  // factory FraudAnalysis.fromJson(String source) => FraudAnalysis.fromMap(json.decode(source));
}
