// ignore_for_file: invalid_annotation_target

import 'package:bcc_rscm/core/models/utils/attachments.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_detail.freezed.dart';
part 'appointment_detail.g.dart';

// "AppointmentID": "APT-2026-000123",
//         "ClientID": "PAT-2026-000456",
//         "ClientDisplayedName": "Matthew Tan",
//         "ExaminationDetail": {
//             "RecordDate": "2026-08-06",
//             "NextControlDate": "2026-08-20",
//             "Complaint": "Patient reports mild headache and fatigue.",
//             "Subjective": "Patient states that the headache started approximately three days ago. No history of trauma. Appetite and sleep are relatively normal.",
//             "Objective": "Patient is alert and oriented. Vital signs within normal limits. No apparent neurological deficit.",
//             "Assessment": "Mild tension-type headache.",
//             "Plan": "Increase fluid intake, maintain adequate rest, and monitor symptoms. Return for follow-up if symptoms persist or worsen."
//         },
//         "ServiceProviderID": "SP-2026-000012",
//         "ServiceProviderDisplayedName": "Dr. Sarah Wijaya",
//         "Attachments": {
//             "PatientPhoto": {
//                 "URL": "",
//                 "Type": "",
//                 "AllowedExtensions": null,
//                 "MaxSizeMb": 0
//             }
//         },
//         "CreatedTimestamp": "2026-08-17T05:42:56.272633663Z"

@Freezed(toJson: false)
abstract class ExaminationDetail with _$ExaminationDetail {
  const ExaminationDetail._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory ExaminationDetail({
    required String recordDate,
    required String nextControlDate,
    required String complaint,
    required String subjective,
    required String objective,
    required String assessment,
    required String plan,
  }) = _ExaminationDetail;

  factory ExaminationDetail.fromJson(Map<String, dynamic> json) =>
      _$ExaminationDetailFromJson(json);
}

@Freezed(toJson: false)
abstract class AppointmentDetailResponse with _$AppointmentDetailResponse {
  const AppointmentDetailResponse._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory AppointmentDetailResponse({
    required String appointmentID,
    required String clientID,
    required String clientDisplayedName,
    required ExaminationDetail examinationDetail,
    required String serviceProviderID,
    required String serviceProviderDisplayedName,
    required Attachments attachments,
  }) = _AppointmentDetailResponse;

  factory AppointmentDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDetailResponseFromJson(json);
}
