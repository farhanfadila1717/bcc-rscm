import 'package:bcc_rscm/core/api/controllers/appointment_controller.dart';
import 'package:bcc_rscm/core/extensions/string_extensions.dart';
import 'package:bcc_rscm/core/models/doctor/appointment_detail.dart';
import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/api_loader.dart';
import 'package:bcc_rscm/ui/components/default_appbar.dart';
import 'package:bcc_rscm/ui/components/default_date_picker.dart';
import 'package:bcc_rscm/ui/components/default_image_picker.dart';
import 'package:bcc_rscm/ui/components/default_textfield.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/components/report_group.dart';
import 'package:bcc_rscm/ui/components/title_form.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';

import 'visit_routine_detail_page_action_mapper.dart';

class VisitRoutineDetailPage extends StatefulGlobalActionMapper
    with VisitRoutineDetailPageActionMapper {
  const VisitRoutineDetailPage({super.key, required this.id});

  final String id;

  @override
  State<VisitRoutineDetailPage> createState() => _VisitRoutineDetailPageState();
}

class _VisitRoutineDetailPageState extends State<VisitRoutineDetailPage> {
  late final ApiLoaderController<AppointmentDetailResponse?>
  _apiLoaderController;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _apiLoaderController = ApiLoaderController(
      fetcher: () => widget.injector
          .get<AppointmentController>()
          .appointmentDetail(id: widget.id),
    );

    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _apiLoaderController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Laporan Visit Rutin'),
      body: ApiLoader(
        controller: _apiLoaderController,
        builder: (_, data) {
          return Scrollbar(
            controller: _scrollController,
            child: ListView(
              controller: _scrollController,
              padding: .only(bottom: 100),
              children: [
                ReportGroup(
                  title: 'Data Pemeriksaan',
                  children: [
                    if (data?.clientDisplayedName != null)
                      Text(
                        data?.clientDisplayedName ?? '',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: .w500,
                        ),
                      ),
                    if (data?.clientID != null)
                      Text(
                        data?.clientID ?? '',
                        style: TextStyle(color: Colors.black),
                      ),
                    Gap(size: 4),
                    TitleForm(title: 'Tanggal Riwayat'),
                    Gap(size: 4),
                    DefaultDatePicker(onChanged: (value) {}),
                    Gap(size: 8),
                    TitleForm(title: 'Jadwal Kontrol Berikutnya'),
                    Gap(size: 4),
                    DefaultDatePicker(onChanged: (value) {}),
                    Gap(size: 8),
                    TitleForm(title: 'Keluhan'),
                    Gap(size: 4),
                    DefaultTextfield(
                      hint: 'Masukkan keluhan',
                      maxLines: 3,
                      onChanged: (value) {},
                    ),
                    Gap(size: 8),
                    TitleForm(title: 'Subyektif'),
                    Gap(size: 4),
                    DefaultTextfield(
                      hint: 'Masukkan subyektif',
                      maxLines: 3,
                      onChanged: (value) {},
                    ),
                    Gap(size: 8),
                    TitleForm(title: 'Obyektif'),
                    Gap(size: 4),
                    DefaultTextfield(
                      hint: 'Masukkan obyektif',
                      maxLines: 3,
                      onChanged: (value) {},
                    ),
                    Gap(size: 8),
                    TitleForm(title: 'Assessment'),
                    Gap(size: 4),
                    DefaultTextfield(
                      hint: 'Masukkan assessment',
                      maxLines: 3,
                      onChanged: (value) {},
                    ),
                    Gap(size: 8),
                    TitleForm(title: 'Plan'),
                    Gap(size: 4),
                    DefaultTextfield(
                      hint: 'Masukkan plan',
                      maxLines: 3,
                      onChanged: (value) {},
                    ),
                  ],
                ),
                Divider(
                  height: 32,
                  thickness: 8,
                  color: ColorPalette.greyScaleBlack10,
                ),
                ReportGroup(
                  title: 'Lainnya (Foto Pasien)',
                  children: [
                    DefaultImagePicker(
                      // previousImageUrl:
                      //     (data?.attachments.patientPhoto.uRL ?? '')
                      //         .preferNullWhenEmpty,
                      previousImageUrl:
                          'https://bicarakan-prod-bucket.s3.amazonaws.com/media/uploads/counselors/fika.webp',
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
