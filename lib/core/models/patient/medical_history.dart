// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_history.freezed.dart';
part 'medical_history.g.dart';

@Freezed(toJson: false)
abstract class MedicalHistoryDetail with _$MedicalHistoryDetail {
  const MedicalHistoryDetail._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory MedicalHistoryDetail({
    required String medicalHistoryInsurance,
    required String medicalHistoryCleftClassification,
    required String medicalHistoryPhotoURL,
    required bool medicalHistoryIsDeceased,
    required String medicalHistoryDeathDate,
  }) = _MedicalHistoryDetail;

  factory MedicalHistoryDetail.fromJson(Map<String, dynamic> json) =>
      _$MedicalHistoryDetailFromJson(json);
}
