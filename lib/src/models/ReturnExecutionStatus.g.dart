// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'ReturnExecutionStatus.dart';

// // **************************************************************************
// // JsonSerializableGenerator
// // **************************************************************************

// /// Classe helper de serialização JSON
// ReturnExecutionStatus _$ReturnExecutionStatusFromJson(
//     Map<String, dynamic> json) {
//   return ReturnExecutionStatus(
//     status: json['Status'] as int?,
//     reasonCode: json['ReasonCode'] as int?,
//     reasonMessage: json['ReasonMessage'] as String?,
//     providerReturnCode: json['ProviderReturnCode'] as String?,
//     providerReturnMessage: json['ProviderReturnMessage'] as String?,
//     returnCode: json['ReturnCode'] as String?,
//     returnMessage: json['ReturnMessage'] as String?,
//     tid: json['Tid'] as String?,
//     proofOfSale: json['ProofOfSale'] as String?,
//     authorizationCode: json['AuthorizationCode'] as String?,
//     links: (json['Links'] as List<dynamic>?)
//         ?.map((e) => Link.fromMap(e as Map<String, dynamic>))
//         .toList(),
//   );
// }

// /// Classe helper de serialização JSON
// Map<String, dynamic> _$ReturnExecutionStatusToJson(
//     ReturnExecutionStatus instance) {
//   final val = <String, dynamic>{};

//   void writeNotNull(String key, dynamic value) {
//     if (value != null) {
//       val[key] = value;
//     }
//   }

//   writeNotNull('Status', instance.status);
//   writeNotNull('ReasonCode', instance.reasonCode);
//   writeNotNull('ReasonMessage', instance.reasonMessage);
//   writeNotNull('ProviderReturnCode', instance.providerReturnCode);
//   writeNotNull('ProviderReturnMessage', instance.providerReturnMessage);
//   writeNotNull('ReturnCode', instance.returnCode);
//   writeNotNull('ReturnMessage', instance.returnMessage);
//   writeNotNull('Tid', instance.tid);
//   writeNotNull('ProofOfSale', instance.proofOfSale);
//   writeNotNull('AuthorizationCode', instance.authorizationCode);
//   writeNotNull('Links', instance.links);
//   return val;
// }
