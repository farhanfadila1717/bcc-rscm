import 'package:bcc_rscm/core/api/controllers/patient_controller.dart';
import 'package:bcc_rscm/core/models/patient/patient_summary.dart';
import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/api_loader.dart';
import 'package:bcc_rscm/ui/components/circle_avatar_image.dart';
import 'package:bcc_rscm/ui/components/circle_name.dart';
import 'package:bcc_rscm/ui/components/default_appbar.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';

import 'doctor_home_page_action_mapper.dart';

class DoctorHomePage extends StatefulGlobalActionMapper
    with DoctorHomePageActionMapper {
  const DoctorHomePage({super.key});

  @override
  State<DoctorHomePage> createState() => _DoctorHomePageState();
}

class _DoctorHomePageState extends State<DoctorHomePage> {
  late final ApiLoaderController<PatientSummaryList?> _apiLoaderController;

  @override
  void initState() {
    super.initState();
    _apiLoaderController = ApiLoaderController(
      fetcher: widget.injector.get<PatientController>().patientList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        titleWidget: Row(
          spacing: 8,
          children: [
            Icon(Icons.group),
            Text('Patients', style: TextStyle(fontSize: 16, fontWeight: .bold)),
          ],
        ),
        centerTitle: false,
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Tambah Pasien',
        onPressed: () {},
        child: Icon(Icons.add_rounded),
      ),
      body: ApiLoader(
        controller: _apiLoaderController,
        builder: (_, data) {
          final clientSummaryList = data?.clientSummaryList;
          if (clientSummaryList == null || clientSummaryList.isEmpty) {
            return Center(child: Text('Data pasien kosong'));
          }

          return ListView.separated(
            itemCount: clientSummaryList.length,
            padding: .fromLTRB(20, 4, 20, 20),
            itemBuilder: (_, index) {
              final item = clientSummaryList[index];

              return GestureDetector(
                onTap: () => widget.goToDetailPatient(id: item.clientId),
                child: Container(
                  padding: .all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: .circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: ColorPalette.greyScaleBlack10,
                        offset: Offset(0, 1),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        spacing: 10,
                        children: [
                          item.clientDisplayPictureUrl.isNotEmpty
                              ? CircleAvatarImage(
                                  imageUrl: item.clientDisplayPictureUrl,
                                  dimension: 40,
                                )
                              : CircleName(
                                  dimension: 40,
                                  name: item.clientName,
                                ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                Text('#${item.clientId}'),
                                Text(
                                  item.clientName,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: .bold,
                                  ),
                                ),
                                Wrap(
                                  spacing: 10,
                                  children: [
                                    Row(
                                      spacing: 4,
                                      mainAxisSize: .min,
                                      children: [
                                        Icon(Icons.calendar_month, size: 16),
                                        Text(
                                          item.clientAge,
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
                                          item.clientGender,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      spacing: 4,
                                      mainAxisSize: .min,
                                      children: [
                                        Icon(Icons.phone, size: 16),
                                        Text(
                                          item.clientPhoneNumber,
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
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (_, _) => Gap(size: 16),
          );
        },
      ),
    );
  }
}
