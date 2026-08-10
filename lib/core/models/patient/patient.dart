// ignore_for_file: invalid_annotation_target

import 'package:bcc_rscm/core/models/patient/guardian.dart';
import 'package:bcc_rscm/core/models/patient/medical_history.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient.freezed.dart';
part 'patient.g.dart';

@Freezed(toJson: false)
abstract class PatientDetail with _$PatientDetail {
  const PatientDetail._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory PatientDetail({
    required String clientId,
    required String clientFullName,
    required String clientIdentityNumber,
    required String clientGender,
    required bool clientIsAdopted,
    required String clientRegistrationDate,
    required String clientBirthPlace,
    required String clientBirthDate,
    required String clientBirthPlaceAndDate,
    required num clientBirthWeightKg,
    required String clientAddress,
  }) = _PatientDetail;

  factory PatientDetail.fromJson(Map<String, dynamic> json) =>
      _$PatientDetailFromJson(json);
}

@Freezed(toJson: false)
abstract class PatientDetailResponse with _$PatientDetailResponse {
  const PatientDetailResponse._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory PatientDetailResponse({
    required PatientDetail clientDetail,
    required GuardianDetail guardianDetail,
    required MedicalHistoryDetail medicalHistoryDetail,
  }) = _PatientDetailResponse;

  factory PatientDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$PatientDetailResponseFromJson(json);
}
