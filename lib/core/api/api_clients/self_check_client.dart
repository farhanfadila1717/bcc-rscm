import 'package:bcc_rscm/core/api/api_clients/api_client.dart';
import 'package:bcc_rscm/core/models/patient/selfcheck.dart';

final class SelfCheckClient extends ApiClient {
  SelfCheckClient({required super.interceptors, required super.env});

  Future<SelftcheckSummaryList?> selfCheckSummaryList({
    required String id,
  }) async {
    const endpoint = 'pierre/client/selfcheck/list';

    final response = await post<SelftcheckSummaryList>(
      endpoint: endpoint,
      serializer: SelftcheckSummaryList.fromJson,
      body: {"id": id},
    );

    return response;
  }

  Future<SelfcheckDetailResponse?> detailSelfCheck({required String id}) async {
    const endpoint = 'pierre/client/selfcheck/detail';

    final response = await post<SelfcheckDetailResponse>(
      endpoint: endpoint,
      serializer: SelfcheckDetailResponse.fromJson,
      body: {"id": id},
    );

    return response;
  }
}
