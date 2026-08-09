// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatientSummary _$PatientSummaryFromJson(Map<String, dynamic> json) =>
    _PatientSummary(
      clientDisplayPictureUrl: json['ClientDisplayPictureUrl'] as String,
      clientName: json['ClientName'] as String,
      clientId: json['ClientId'] as String,
      clientAge: json['ClientAge'] as String,
      clientGender: json['ClientGender'] as String,
      clientPhoneNumber: json['ClientPhoneNumber'] as String,
      clientEmail: json['ClientEmail'] as String,
    );

Map<String, dynamic> _$PatientSummaryToJson(_PatientSummary instance) =>
    <String, dynamic>{
      'ClientDisplayPictureUrl': instance.clientDisplayPictureUrl,
      'ClientName': instance.clientName,
      'ClientId': instance.clientId,
      'ClientAge': instance.clientAge,
      'ClientGender': instance.clientGender,
      'ClientPhoneNumber': instance.clientPhoneNumber,
      'ClientEmail': instance.clientEmail,
    };

_PatientSummaryList _$PatientSummaryListFromJson(Map<String, dynamic> json) =>
    _PatientSummaryList(
      clientSummaryList: (json['ClientSummaryList'] as List<dynamic>)
          .map((e) => PatientSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PatientSummaryListToJson(_PatientSummaryList instance) =>
    <String, dynamic>{
      'ClientSummaryList': instance.clientSummaryList
          .map((e) => e.toJson())
          .toList(),
    };
