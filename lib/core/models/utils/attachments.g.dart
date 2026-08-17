// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatientPhoto _$PatientPhotoFromJson(Map<String, dynamic> json) =>
    _PatientPhoto(
      uRL: json['URL'] as String,
      type: json['Type'] as String,
      allowedExtensions: json['AllowedExtensions'] as String?,
      maxSizeMb: (json['MaxSizeMb'] as num).toInt(),
    );

_Attachments _$AttachmentsFromJson(Map<String, dynamic> json) => _Attachments(
  patientPhoto: PatientPhoto.fromJson(
    json['PatientPhoto'] as Map<String, dynamic>,
  ),
);
