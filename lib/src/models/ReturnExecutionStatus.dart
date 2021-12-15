import 'dart:convert';

import 'models.dart';

class ReturnExecutionStatus {
  int? status;
  int? reasonCode;
  String? reasonMessage;
  String? providerReturnCode;
  String? providerReturnMessage;
  String? returnCode;
  String? returnMessage;
  String? tid;
  String? proofOfSale;
  String? authorizationCode;
  List<Link>? links;

  ReturnExecutionStatus({
    this.status,
    this.reasonCode,
    this.reasonMessage,
    this.providerReturnCode,
    this.providerReturnMessage,
    this.returnCode,
    this.returnMessage,
    this.tid,
    this.proofOfSale,
    this.authorizationCode,
    this.links,
  });

  Map<String, dynamic> toMap() {
    return {
      'Status': status,
      'ReasonCode': reasonCode,
      'ReasonMessage': reasonMessage,
      'ProviderReturnCode': providerReturnCode,
      'ProviderReturnMessage': providerReturnMessage,
      'ReturnCode': returnCode,
      'ReturnMessage': returnMessage,
      'Tid': tid,
      'ProofOfSale': proofOfSale,
      'AuthorizationCode': authorizationCode,
      'Links': links?.map((x) => x.toMap()).toList(),
    };
  }

  factory ReturnExecutionStatus.fromMap(Map<String, dynamic> map) {
    return ReturnExecutionStatus(
      status: map['Status']?.toInt(),
      reasonCode: map['ReasonCode']?.toInt(),
      reasonMessage: map['ReasonMessage'],
      providerReturnCode: map['ProviderReturnCode'],
      providerReturnMessage: map['ProviderReturnMessage'],
      returnCode: map['ReturnCode'],
      returnMessage: map['ReturnMessage'],
      tid: map['Tid'],
      proofOfSale: map['ProofOfSale'],
      authorizationCode: map['AuthorizationCode'],
      links: map['Links'] != null
          ? List<Link>.from(map['Links']?.map((x) => Link.fromMap(x)))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReturnExecutionStatus.fromJson(String source) =>
      ReturnExecutionStatus.fromMap(json.decode(source));
}
