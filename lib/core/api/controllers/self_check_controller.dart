import 'package:bcc_rscm/core/api/api_clients/self_check_client.dart';
import 'package:bcc_rscm/core/models/patient/selfcheck.dart';

final class SelfCheckController {
  final SelfCheckClient selfCheckClient;

  new({required this.selfCheckClient});

  Future<SelftcheckSummaryList?> selfCheckSummaryList({required String id}) =>
      selfCheckClient.selfCheckSummaryList(id: id);

  Future<SelfcheckDetailResponse?> detailSelfCheck({required String id}) =>
      selfCheckClient.detailSelfCheck(id: id);
}
