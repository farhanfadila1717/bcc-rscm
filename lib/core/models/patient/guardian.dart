// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'guardian.freezed.dart';
part 'guardian.g.dart';

@Freezed(toJson: false)
abstract class GuardianDetail with _$GuardianDetail {
  const GuardianDetail._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory GuardianDetail({
    required String guardianName,
    required String guardianPhone,
    required String guardianAddress,
    required String birthDate,
  }) = _GuardianDetail;

  factory GuardianDetail.fromJson(Map<String, dynamic> json) =>
      _$GuardianDetailFromJson(json);
}
