// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatientDetail _$PatientDetailFromJson(Map<String, dynamic> json) =>
    _PatientDetail(
      clientID: json['ClientID'] as String,
      clientFullName: json['ClientFullName'] as String,
      clientIdentityNumber: json['ClientIdentityNumber'] as String,
      clientGender: json['ClientGender'] as String,
      clientIsAdopted: json['ClientIsAdopted'] as bool,
      clientRegistrationDate: json['ClientRegistrationDate'] as String,
      clientBirthPlace: json['ClientBirthPlace'] as String,
      clientBirthDate: json['ClientBirthDate'] as String,
      clientBirthPlaceAndDate: json['ClientBirthPlaceAndDate'] as String,
      clientBirthWeightKg: json['ClientBirthWeightKg'] as num,
      clientAddress: json['ClientAddress'] as String,
    );

_PatientDetailResponse _$PatientDetailResponseFromJson(
  Map<String, dynamic> json,
) => _PatientDetailResponse(
  clientDetail: PatientDetail.fromJson(
    json['ClientDetail'] as Map<String, dynamic>,
  ),
  guardianDetail: GuardianDetail.fromJson(
    json['GuardianDetail'] as Map<String, dynamic>,
  ),
  medicalHistoryDetail: MedicalHistoryDetail.fromJson(
    json['MedicalHistoryDetail'] as Map<String, dynamic>,
  ),
);
