// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppointmentSummary _$AppointmentSummaryFromJson(
  Map<String, dynamic> json,
) => _AppointmentSummary(
  appointmentID: json['AppointmentID'] as String,
  appointmentDate: json['AppointmentDate'] as String,
  appointmentName: json['AppointmentName'] as String,
  appointmentStartTime: json['AppointmentStartTime'] as String,
  serviceProviderDisplayedName: json['ServiceProviderDisplayedName'] as String,
  serviceProviderDisplayedTag: json['ServiceProviderDisplayedTag'] as String,
);

_AppointmentListResponse _$AppointmentListResponseFromJson(
  Map<String, dynamic> json,
) => _AppointmentListResponse(
  appointmentSummaryList: (json['AppointmentSummaryList'] as List<dynamic>)
      .map((e) => AppointmentSummary.fromJson(e as Map<String, dynamic>))
      .toList(),
);
