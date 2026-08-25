import 'package:bcc_rscm/core/api/api_clients/api_client.dart';
import 'package:bcc_rscm/core/models/doctor/service.dart';

final class ServiceClient extends ApiClient {
  ServiceClient({required super.interceptors, required super.env});

  Future<ServiceSummaryList?> serviceList({required String id}) async {
    const endpoint = 'pierre/client/service/list';

    final response = await post<ServiceSummaryList>(
      endpoint: endpoint,
      body: {"id": id},
      serializer: ServiceSummaryList.fromJson,
    );

    return response;
  }
}
