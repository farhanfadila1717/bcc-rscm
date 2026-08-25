import 'package:bcc_rscm/core/api/controllers/patient_controller.dart';
import 'package:bcc_rscm/core/models/patient/patient.dart';
import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/api_loader.dart';
import 'package:bcc_rscm/ui/components/circle_name.dart';
import 'package:bcc_rscm/ui/components/default_appbar.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/components/tile_menu_item.dart';
import 'package:flutter/material.dart';

import 'client_page_action_mapper.dart';

class ClientPage extends StatefulGlobalActionMapper
    with ClientPageActionMapper {
  const ClientPage({super.key, required this.clientId});

  final String clientId;

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  late final ApiLoaderController<PatientDetailResponse?> _apiLoaderController;

  @override
  void initState() {
    super.initState();
    _apiLoaderController = ApiLoaderController(
      fetcher: () => widget.injector.get<PatientController>().patientDetail(
        id: widget.clientId,
      ),
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
      appBar: DefaultAppBar(title: 'Detail Pasien'),
      body: ApiLoader(
        controller: _apiLoaderController,
        builder: (_, data) {
          if (data == null) {
            return Center(child: Text('Data patient is empty'));
          }
          final clientDetail = data.clientDetail;
          return ListView(
            padding: .fromLTRB(20, 0, 20, 20),
            children: [
              CircleName(dimension: 55, name: clientDetail.clientFullName),
              Row(
                crossAxisAlignment: .start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          clientDetail.clientID,
                          textAlign: .center,
                          style: TextStyle(fontWeight: .normal),
                        ),
                        Gap(size: 2),
                        Text(
                          clientDetail.clientFullName,
                          textAlign: .center,
                          style: TextStyle(
                            fontWeight: .bold,
                            color: Colors.black,
                          ),
                        ),
                        Gap(size: 4),
                        Wrap(
                          spacing: 10,
                          runSpacing: 2,
                          children: [
                            Row(
                              spacing: 4,
                              mainAxisSize: .min,
                              children: [
                                Icon(Icons.calendar_month, size: 16),
                                Text(
                                  clientDetail.clientBirthDate,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              spacing: 4,
                              mainAxisSize: .min,
                              children: [
                                Icon(Icons.person, size: 16),
                                Text(
                                  clientDetail.clientGender,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            // Row(
                            //   spacing: 4,
                            //   mainAxisSize: .min,
                            //   children: [
                            //     Icon(Icons.phone, size: 16),
                            //     Text(
                            //       clientDetail.clientIdentityNumber,
                            //       style: TextStyle(color: Colors.black),
                            //     ),
                            //   ],
                            // ),
                            Row(
                              spacing: 4,
                              mainAxisSize: .min,
                              children: [
                                Icon(Icons.location_on_outlined, size: 16),
                                Text(
                                  clientDetail.clientAddress,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(size: 24),
              Text(
                'Medical Records',
                style: TextStyle(
                  fontWeight: .bold,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              Gap(size: 8),
              TileMenuItem(
                title: 'Profil Pasien',
                subtitle: 'Patient demographic information',
                onPressed: () => widget.goToProfilePatient(id: widget.clientId),
              ),
              TileMenuItem(
                title: 'Laporan Visit Awal',
                subtitle: 'Initial assessment report',
                onPressed: () =>
                    widget.goToReportFirstVisit(id: widget.clientId),
              ),
              TileMenuItem(
                title: 'Laporan Visit Rutin',
                subtitle: 'Routine follow-up visits',
                onPressed: () =>
                    widget.goToReportRoutineVisit(id: widget.clientId),
              ),
              TileMenuItem(
                title: 'Laporan Operasi',
                subtitle: 'Surgery reports and operative notes',
                onPressed: () => widget.goToSurgery(id: widget.clientId),
              ),
              TileMenuItem(
                title: 'Laporan Progress Pasien',
                subtitle: 'Patient self-captured progress photos',
                onPressed: () =>
                    widget.goToSelfcheckPatient(id: widget.clientId),
              ),
            ],
          );
        },
      ),
    );
  }
}
