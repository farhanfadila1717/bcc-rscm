import 'package:bcc_rscm/core/api/api_clients/service_client.dart';
import 'package:bcc_rscm/core/models/doctor/service.dart';

final class ServiceController {
  final ServiceClient serviceClient;

  const new({required this.serviceClient});

  Future<ServiceSummaryList?> serviceList({required String id}) =>
      serviceClient.serviceList(id: id);
}
