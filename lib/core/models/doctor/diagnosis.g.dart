// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiagnosisDetail _$DiagnosisDetailFromJson(Map<String, dynamic> json) =>
    _DiagnosisDetail(
      diagnosisName: json['DiagnosisName'] as String,
      diagnosisDescription: json['DiagnosisDescription'] as String,
      diagnosisDate: json['DiagnosisDate'] as String,
    );

_IntakeDetailResponse _$IntakeDetailResponseFromJson(
  Map<String, dynamic> json,
) => _IntakeDetailResponse(
  preOperativeTreatment: json['PreOperativeTreatment'] as String,
  primaryDiagnosis: json['PrimaryDiagnosis'] as String,
  secondaryDiagnosis: json['SecondaryDiagnosis'] as String,
  clientHasPierreRobinSequence: json['ClientHasPierreRobinSequence'] as bool,
  clientHasSyndrome: json['ClientHasSyndrome'] as bool,
  clientHasOtherCongenitalDeformity:
      json['ClientHasOtherCongenitalDeformity'] as bool,
  pierreRobinSequenceDetail: DiagnosisDetail.fromJson(
    json['PierreRobinSequenceDetail'] as Map<String, dynamic>,
  ),
  clientSyndromeDetail: DiagnosisDetail.fromJson(
    json['ClientSyndromeDetail'] as Map<String, dynamic>,
  ),
  clientSyndromeDetailList: (json['ClientSyndromeDetailList'] as List<dynamic>)
      .map((e) => DiagnosisDetail.fromJson(e as Map<String, dynamic>))
      .toList(),
);
