import 'package:bcc_rscm/core/api/controllers/appointment_controller.dart';
import 'package:bcc_rscm/core/extensions/extensions.dart';
import 'package:bcc_rscm/core/models/doctor/appointment.dart';
import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/api_loader.dart';
import 'package:bcc_rscm/ui/components/default_appbar.dart';
import 'package:bcc_rscm/ui/components/default_chip.dart';
import 'package:bcc_rscm/ui/components/default_empty_view.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'routine_visit_page_action_mapper.dart';

class RoutineVisitPage extends StatefulGlobalActionMapper
    with RoutineVisitPageActionMapper {
  const RoutineVisitPage({super.key, required this.id});

  final String id;

  @override
  State<RoutineVisitPage> createState() => _RoutineVisitPageState();
}

class _RoutineVisitPageState extends State<RoutineVisitPage> {
  late final ApiLoaderController<AppointmentListResponse?> _apiLoaderController;

  @override
  void initState() {
    super.initState();
    _apiLoaderController = ApiLoaderController(
      fetcher: () => widget.injector
          .get<AppointmentController>()
          .appointmentList(id: widget.id),
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
      appBar: DefaultAppBar(title: 'List Laporan Visit'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_rounded),
      ),
      body: ApiLoader(
        controller: _apiLoaderController,
        builder: (_, data) {
          final appointmentSummaryList = data?.appointmentSummaryList;

          if (appointmentSummaryList.isNullOrEmpty) {
            return DefaultEmptyView(onRefresh: _apiLoaderController.refresh);
          }

          return ListView.separated(
            padding: .fromLTRB(20, 20, 20, 24),
            itemBuilder: (_, index) {
              final item = appointmentSummaryList[index];

              final date = item.appointmentDate.convertFromApi;

              return GestureDetector(
                onTap: () =>
                    widget.goToDetailVisitRoutine(id: item.appointmentID),
                child: Container(
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
                        item.appointmentName,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: .w600,
                        ),
                      ),
                      Text(item.serviceProviderDisplayedName),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (_, _) => Gap(size: 16),
            itemCount: appointmentSummaryList!.length,
          );
        },
      ),
    );
  }
}

class RoutineVisitCard extends StatelessWidget {
  const RoutineVisitCard({super.key, required this.onTap, required this.item});

  final VoidCallback onTap;
  final AppointmentSummary item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: .hardEdge,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: .circular(16),
          border: .all(color: ColorPalette.greyScaleBlack10),
        ),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Container(
              padding: .symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: .vertical(top: .circular(16)),
                color: ColorPalette.bluePrimary,
              ),
              child: Row(
                spacing: 8,
                children: [
                  SvgPicture.asset(
                    'assets/icons/ic_tracker.svg',
                    height: 24,
                    width: 24,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: .start,
                      mainAxisAlignment: .center,
                      spacing: 2,
                      children: [
                        Text(
                          item.appointmentDate,
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                        Text(
                          item.serviceProviderDisplayedTag,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: .bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: .fromLTRB(16, 10, 16, 4),
              child: Text(
                item.appointmentName,
                style: TextStyle(color: Colors.black, fontWeight: .bold),
              ),
            ),
            Padding(
              padding: .fromLTRB(16, 0, 16, 10),
              child: Text(
                item.serviceProviderDisplayedName,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
