// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'diagnosis.freezed.dart';
part 'diagnosis.g.dart';

@Freezed(toJson: false)
abstract class DiagnosisDetail with _$DiagnosisDetail {
  const DiagnosisDetail._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory DiagnosisDetail({
    required String diagnosisName,
    required String diagnosisDescription,
    required String diagnosisDate,
  }) = _DiagnosisDetail;

  factory DiagnosisDetail.fromJson(Map<String, dynamic> json) =>
      _$DiagnosisDetailFromJson(json);
}

@Freezed(toJson: false)
abstract class IntakeDetailResponse with _$IntakeDetailResponse {
  const IntakeDetailResponse._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory IntakeDetailResponse({
    required String preOperativeTreatment,
    required String primaryDiagnosis,
    required String secondaryDiagnosis,
    required bool clientHasPierreRobinSequence,
    required bool clientHasSyndrome,
    required bool clientHasOtherCongenitalDeformity,
    required DiagnosisDetail pierreRobinSequenceDetail,
    required DiagnosisDetail clientSyndromeDetail,
    required List<DiagnosisDetail> clientSyndromeDetailList,
  }) = _IntakeDetailResponse;

  factory IntakeDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$IntakeDetailResponseFromJson(json);
}
