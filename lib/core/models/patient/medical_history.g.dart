// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MedicalHistoryDetail _$MedicalHistoryDetailFromJson(
  Map<String, dynamic> json,
) => _MedicalHistoryDetail(
  medicalHistoryInsurance: json['MedicalHistoryInsurance'] as String,
  medicalHistoryCleftClassification:
      json['MedicalHistoryCleftClassification'] as String,
  medicalHistoryPhotoURL: json['MedicalHistoryPhotoURL'] as String,
  medicalHistoryIsDeceased: json['MedicalHistoryIsDeceased'] as bool,
  medicalHistoryDeathDate: json['MedicalHistoryDeathDate'] as String,
);
