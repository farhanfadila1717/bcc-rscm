// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExaminationDetail _$ExaminationDetailFromJson(Map<String, dynamic> json) =>
    _ExaminationDetail(
      recordDate: json['RecordDate'] as String,
      nextControlDate: json['NextControlDate'] as String,
      complaint: json['Complaint'] as String,
      subjective: json['Subjective'] as String,
      objective: json['Objective'] as String,
      assessment: json['Assessment'] as String,
      plan: json['Plan'] as String,
    );

_AppointmentDetailResponse _$AppointmentDetailResponseFromJson(
  Map<String, dynamic> json,
) => _AppointmentDetailResponse(
  appointmentID: json['AppointmentID'] as String,
  clientID: json['ClientID'] as String,
  clientDisplayedName: json['ClientDisplayedName'] as String,
  examinationDetail: ExaminationDetail.fromJson(
    json['ExaminationDetail'] as Map<String, dynamic>,
  ),
  serviceProviderID: json['ServiceProviderID'] as String,
  serviceProviderDisplayedName: json['ServiceProviderDisplayedName'] as String,
  attachments: Attachments.fromJson(
    json['Attachments'] as Map<String, dynamic>,
  ),
);
