// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachments.freezed.dart';
part 'attachments.g.dart';

@Freezed(toJson: false)
abstract class PatientPhoto with _$PatientPhoto {
  const PatientPhoto._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory PatientPhoto({
    required String uRL,
    required String type,
    required String? allowedExtensions,
    required int maxSizeMb,
  }) = _PatientPhoto;

  factory PatientPhoto.fromJson(Map<String, dynamic> json) =>
      _$PatientPhotoFromJson(json);
}

@Freezed(toJson: false)
abstract class Attachments with _$Attachments {
  const Attachments._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory Attachments({required PatientPhoto patientPhoto}) =
      _Attachments;

  factory Attachments.fromJson(Map<String, dynamic> json) =>
      _$AttachmentsFromJson(json);
}
