import 'package:bcc_rscm/core/api/controllers/service_controller.dart';
import 'package:bcc_rscm/core/extensions/extensions.dart';
import 'package:bcc_rscm/core/models/doctor/service.dart';
import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/api_loader.dart';
import 'package:bcc_rscm/ui/components/default_appbar.dart';
import 'package:bcc_rscm/ui/components/default_chip.dart';
import 'package:bcc_rscm/ui/components/default_empty_view.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';

import 'patient_surgery_page_action_mapper.dart';

class PatientSurgeryPage extends StatefulGlobalActionMapper
    with PatientSurgeryPageActionMapper {
  const PatientSurgeryPage({super.key, required this.id});

  final String id;

  @override
  State<PatientSurgeryPage> createState() => _PatientSurgeryPageState();
}

class _PatientSurgeryPageState extends State<PatientSurgeryPage> {
  late final ApiLoaderController<ServiceSummaryList?> _apiLoaderController;

  @override
  void initState() {
    super.initState();
    _apiLoaderController = ApiLoaderController(
      fetcher: () =>
          widget.injector.get<ServiceController>().serviceList(id: widget.id),
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
      appBar: DefaultAppBar(title: 'Laporan Operasi', centerTitle: false),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_rounded),
      ),
      body: ApiLoader(
        controller: _apiLoaderController,
        builder: (_, data) {
          final serviceSummaryList = data?.serviceSummaryList;

          if (serviceSummaryList.isNullOrEmpty) {
            return DefaultEmptyView();
          }

          return Scrollbar(
            child: ListView.separated(
              padding: .fromLTRB(20, 10, 20, 50),
              itemBuilder: (_, index) {
                final item = serviceSummaryList[index];
                final date = item.serviceDate.convertFromApi;

                return Container(
                  padding: .all(16),
                  decoration: BoxDecoration(
                    borderRadius: .circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: ColorPalette.greyScaleBlack10,
                        offset: Offset(0, 1),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        '${date.day}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: .bold,
                          color: ColorPalette.bluePrimary,
                        ),
                      ),
                      Text(date.mmyyy, style: TextStyle(fontSize: 12)),
                      Gap(size: 10),
                      DefaultChip(text: item.serviceProviderDisplayedTag),
                      Gap(size: 10),
                      Text(
                        item.serviceName,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: .w600,
                        ),
                      ),
                      Text(item.serviceProviderDisplayedName),
                    ],
                  ),
                );
              },
              separatorBuilder: (_, _) => Gap(size: 16),
              itemCount: serviceSummaryList!.length,
            ),
          );
        },
      ),
    );
  }
}
