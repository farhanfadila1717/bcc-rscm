import 'package:bcc_rscm/core/api/controllers/appointment_controller.dart';
import 'package:bcc_rscm/core/extensions/extensions.dart';
import 'package:bcc_rscm/core/models/doctor/appointment_detail.dart';
import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/api_loader.dart';
import 'package:bcc_rscm/ui/components/collapse_mixin.dart';
import 'package:bcc_rscm/ui/components/default_appbar.dart';
import 'package:bcc_rscm/ui/components/default_date_picker.dart';
import 'package:bcc_rscm/ui/components/default_empty_view.dart';
import 'package:bcc_rscm/ui/components/default_image_picker.dart';
import 'package:bcc_rscm/ui/components/default_textfield.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/components/report_group.dart';
import 'package:bcc_rscm/ui/components/title_form.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

import 'visit_routine_detail_page_action_mapper.dart';

class VisitRoutineDetailPage extends StatefulGlobalActionMapper
    with VisitRoutineDetailPageActionMapper {
  const VisitRoutineDetailPage({super.key, required this.id});

  final String id;

  @override
  State<VisitRoutineDetailPage> createState() => _VisitRoutineDetailPageState();
}

class _VisitRoutineDetailPageState extends State<VisitRoutineDetailPage>
    with CollapseMixin {
  late final ApiLoaderController<AppointmentDetailResponse?>
  _apiLoaderController;
  late final ScrollController _scrollController;
  AppointmentDetailResponse? _appointmentDetailResponse;

  @override
  void initState() {
    super.initState();
    _apiLoaderController = ApiLoaderController(
      fetcher: () => widget.injector
          .get<AppointmentController>()
          .appointmentDetail(id: widget.id),
    );

    _scrollController = ScrollController();
    listenCollapse(controller: _scrollController);
  }

  AppointmentDetailResponse get formData =>
      _appointmentDetailResponse ?? _apiLoaderController.state.data!;

  void _onUpdate(AppointmentDetailResponse newValue) {
    EasyDebounce.debounce(
      '_appointmentDetailResponse',
      Duration(milliseconds: 100),
      () {
        setState(() {
          _appointmentDetailResponse = newValue;
        });
      },
    );
  }

  @override
  void dispose() {
    _apiLoaderController.dispose();
    _scrollController.dispose();
    EasyDebounce.cancel('_appointmentDetailResponse');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        backgroundColor: isCollapsed ? Colors.white : ColorPalette.bluePrimary,
        systemOverlayStyle: isCollapsed ? .dark : .light,
        iconColor: isCollapsed ? Colors.black : Colors.white,
        textStyle: TextStyle(color: Colors.white, fontSize: 16),
      ),
      body: ApiLoader(
        controller: _apiLoaderController,
        builder: (_, data) {
          if (data == null) {
            return DefaultEmptyView();
          }

          final examinationDetail = formData.examinationDetail;
          final attachments = data.attachments;
          return Scrollbar(
            controller: _scrollController,
            child: ListView(
              controller: _scrollController,
              padding: .only(bottom: 100),
              children: [
                Container(
                  decoration: BoxDecoration(color: ColorPalette.bluePrimary),
                  padding: .fromLTRB(20, 20, 20, 20),
                  child: Column(
                    crossAxisAlignment: .start,
                    mainAxisAlignment: .end,
                    children: [
                      Text(
                        'Riwayat Pemeriksaan',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: .bold,
                        ),
                      ),
                      Gap(size: 8),
                      Text(
                        formData.clientDisplayedName,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: .w500,
                        ),
                      ),
                      Gap(size: 4),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: .circular(20),
                        ),
                        padding: .symmetric(horizontal: 8, vertical: 2),
                        child: Text(
                          formData.clientID,
                          style: TextStyle(
                            color: ColorPalette.bluePrimary,
                            fontWeight: .w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(size: 20),
                ReportGroup(
                  title: 'Data Pemeriksaan',
                  children: [
                    Gap(size: 4),
                    TitleForm(title: 'Tanggal Riwayat'),
                    Gap(size: 4),
                    DefaultDatePicker(
                      selected:
                          examinationDetail.recordDate.convertFromApiNullable,
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          examinationDetail: examinationDetail.copyWith(
                            recordDate: value.convertToStringForApi,
                          ),
                        ),
                      ),
                    ),
                    Gap(size: 8),
                    TitleForm(title: 'Jadwal Kontrol Berikutnya'),
                    Gap(size: 4),
                    DefaultDatePicker(
                      selected: examinationDetail
                          .nextControlDate
                          .convertFromApiNullable,
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          examinationDetail: examinationDetail.copyWith(
                            nextControlDate: value.convertToStringForApi,
                          ),
                        ),
                      ),
                    ),
                    Gap(size: 8),
                    TitleForm(title: 'Keluhan'),
                    Gap(size: 4),
                    DefaultTextfield(
                      initial: examinationDetail.complaint,
                      hint: 'Masukkan keluhan',
                      maxLines: 3,

                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          examinationDetail: examinationDetail.copyWith(
                            complaint: value,
                          ),
                        ),
                      ),
                    ),
                    Gap(size: 8),
                    TitleForm(title: 'Subyektif'),
                    Gap(size: 4),
                    DefaultTextfield(
                      hint: 'Masukkan subyektif',
                      maxLines: 3,
                      initial: examinationDetail.subjective,
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          examinationDetail: examinationDetail.copyWith(
                            subjective: value,
                          ),
                        ),
                      ),
                    ),
                    Gap(size: 8),
                    TitleForm(title: 'Obyektif'),
                    Gap(size: 4),
                    DefaultTextfield(
                      hint: 'Masukkan obyektif',
                      maxLines: 3,
                      initial: examinationDetail.objective,
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          examinationDetail: examinationDetail.copyWith(
                            objective: value,
                          ),
                        ),
                      ),
                    ),
                    Gap(size: 8),
                    TitleForm(title: 'Assessment'),
                    Gap(size: 4),
                    DefaultTextfield(
                      hint: 'Masukkan assessment',
                      maxLines: 3,
                      initial: examinationDetail.assessment,
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          examinationDetail: examinationDetail.copyWith(
                            assessment: value,
                          ),
                        ),
                      ),
                    ),
                    Gap(size: 8),
                    TitleForm(title: 'Plan'),
                    Gap(size: 4),
                    DefaultTextfield(
                      hint: 'Masukkan plan',
                      maxLines: 3,
                      initial: examinationDetail.plan,
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          examinationDetail: examinationDetail.copyWith(
                            plan: value,
                          ),
                        ),
                      ),
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
                    Gap(size: 8),
                    DefaultImagePicker(
                      previousImageUrl:
                          attachments.patientPhoto.uRL.preferNullWhenEmpty,
                      previewHeight: 100,
                      previewWidth: 100,
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
