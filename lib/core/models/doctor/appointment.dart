// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment.freezed.dart';
part 'appointment.g.dart';

@Freezed(toJson: false)
abstract class AppointmentSummary with _$AppointmentSummary {
  const AppointmentSummary._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory AppointmentSummary({
    required String appointmentID,
    required String appointmentDate,
    required String appointmentName,
    required String appointmentStartTime,
    required String serviceProviderDisplayedName,
    required String serviceProviderDisplayedTag,
  }) = _AppointmentSummary;

  factory AppointmentSummary.fromJson(Map<String, dynamic> json) =>
      _$AppointmentSummaryFromJson(json);
}

@Freezed(toJson: false)
abstract class AppointmentListResponse with _$AppointmentListResponse {
  const AppointmentListResponse._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory AppointmentListResponse({
    required List<AppointmentSummary> appointmentSummaryList,
  }) = _AppointmentListResponse;

  factory AppointmentListResponse.fromJson(Map<String, dynamic> json) =>
      _$AppointmentListResponseFromJson(json);
}
