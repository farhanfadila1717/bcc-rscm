import 'package:bcc_rscm/core/api/api_clients/appointment_client.dart';
import 'package:bcc_rscm/core/models/doctor/appointment.dart';
import 'package:bcc_rscm/core/models/doctor/appointment_detail.dart';

final class AppointmentController {
  const new({required this.appointmentClient});

  final AppointmentClient appointmentClient;

  Future<AppointmentListResponse?> appointmentList({required String id}) =>
      appointmentClient.appointmentList(id: id);

  Future<AppointmentDetailResponse?> appointmentDetail({required String id}) =>
      appointmentClient.appointmentDetail(id: id);
}
