// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_summary.freezed.dart';
part 'patient_summary.g.dart';

@freezed
abstract class PatientSummary with _$PatientSummary {
  const PatientSummary._();

  @JsonSerializable(fieldRename: .pascal)
  const factory PatientSummary({
    required String clientDisplayPictureUrl,
    required String clientName,
    required String clientId,
    required String clientAge,
    required String clientGender,
    required String clientPhoneNumber,
    required String clientEmail,
  }) = _PatientSummary;

  factory PatientSummary.fromJson(Map<String, dynamic> json) =>
      _$PatientSummaryFromJson(json);
}

@freezed
abstract class PatientSummaryList with _$PatientSummaryList {
  const PatientSummaryList._();

  @JsonSerializable(fieldRename: .pascal)
  const factory PatientSummaryList({
    required List<PatientSummary> clientSummaryList,
  }) = _PatientSummaryList;

  factory PatientSummaryList.fromJson(Map<String, dynamic> json) =>
      _$PatientSummaryListFromJson(json);
}
