import 'package:bcc_rscm/core/api/api_clients/api_client.dart';
import 'package:bcc_rscm/core/models/doctor/appointment.dart';
import 'package:bcc_rscm/core/models/doctor/appointment_detail.dart';

final class AppointmentClient extends ApiClient {
  AppointmentClient({required super.interceptors, required super.env});

  Future<AppointmentListResponse?> appointmentList({required String id}) async {
    const endpoint = 'pierre/client/appointment/list';

    final response = await post<AppointmentListResponse>(
      endpoint: endpoint,
      serializer: AppointmentListResponse.fromJson,
      body: {"id": id},
    );

    return response;
  }

  Future<AppointmentDetailResponse?> appointmentDetail({
    required String id,
  }) async {
    const endpoint = 'pierre/client/appointment/detail';

    final response = await post<AppointmentDetailResponse>(
      endpoint: endpoint,
      serializer: AppointmentDetailResponse.fromJson,
      body: {"id": id},
    );

    return response;
  }
}
