import 'package:bcc_rscm/core/api/controllers/patient_controller.dart';
import 'package:bcc_rscm/core/models/patient/patient_summary.dart';
import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/api_loader.dart';
import 'package:bcc_rscm/ui/components/default_appbar.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulGlobalActionMapper {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late final ApiLoaderController<PatientSummaryList?> _apiLoaderController;

  @override
  void initState() {
    super.initState();
    _apiLoaderController = ApiLoaderController(
      fetcher: () => widget.injector.get<PatientController>().patientList(),
    );
  }

  @override
  void dispose() {
    _apiLoaderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Profile'),
      body: ApiLoader(
        controller: _apiLoaderController,
        builder: (_, data) {
          final clientSummaryList = data?.clientSummaryList;
          if (clientSummaryList == null || clientSummaryList.isEmpty) {
            return Center();
          }
          return ListView.separated(
            itemBuilder: (_, index) {
              final item = clientSummaryList[index];
              return Text(item.clientName);
            },
            separatorBuilder: (_, _) => Gap(size: 16),
            itemCount: clientSummaryList.length,
          );
        },
      ),
    );
  }
}
