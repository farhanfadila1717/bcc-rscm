import 'package:bcc_rscm/core/api/controllers/intake_controller.dart';
import 'package:bcc_rscm/core/constanst.dart';
import 'package:bcc_rscm/core/extensions/extensions.dart';
import 'package:bcc_rscm/core/models/doctor/diagnosis.dart';
import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/api_loader.dart';
import 'package:bcc_rscm/ui/components/bottom_area_bar.dart';
import 'package:bcc_rscm/ui/components/default_appbar.dart';
import 'package:bcc_rscm/ui/components/default_date_picker.dart';
import 'package:bcc_rscm/ui/components/default_dropdown.dart';
import 'package:bcc_rscm/ui/components/default_switch.dart';
import 'package:bcc_rscm/ui/components/default_textfield.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/components/primary_button.dart';
import 'package:bcc_rscm/ui/components/report_group.dart';
import 'package:bcc_rscm/ui/components/title_form.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

class FirstVisitPage extends StatefulGlobalActionMapper {
  const FirstVisitPage({super.key, required this.id});

  final String id;

  @override
  State<FirstVisitPage> createState() => _FirstVisitPageState();
}

class _FirstVisitPageState extends State<FirstVisitPage> {
  late final ApiLoaderController<IntakeDetailResponse?> _apiLoaderController;
  IntakeDetailResponse? _intakeDetailResponse;

  @override
  void initState() {
    super.initState();
    _apiLoaderController = ApiLoaderController(
      fetcher: () =>
          widget.injector.get<IntakeController>().intakeDetail(id: widget.id),
    );
  }

  void _onUpdate(IntakeDetailResponse newValue) {
    EasyDebounce.debounce('first-visit', Duration(milliseconds: 100), () {
      setState(() {
        _intakeDetailResponse = newValue;
      });
    });
  }

  IntakeDetailResponse get formData =>
      _intakeDetailResponse ?? _apiLoaderController.state.data!;

  @override
  void dispose() {
    _apiLoaderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: DefaultAppBar(title: 'Detail Pemeriksaan Awal'),
      body: Theme(
        data: theme.copyWith(
          textTheme: theme.textTheme.copyWith(
            bodyLarge: TextStyle(fontSize: 12, color: Colors.black),
          ),
        ),
        child: ApiLoader(
          controller: _apiLoaderController,

          builder: (_, data) {
            return Scrollbar(
              child: ListView(
                padding: .only(bottom: 100),
                children: [
                  ReportGroup(
                    title: 'Pre-oparative Treatment',
                    children: [
                      Gap(size: 4),
                      Text('Treatment', style: TextStyle(color: Colors.black)),
                      Gap(size: 4),
                      DefaultTextfield(
                        maxLines: 5,
                        initial: data?.preOperativeTreatment,
                        hint:
                            'Enter pre-operative treatment (e.g. NAM Therapy, lip taping, feeding iteration, speech therapy, orthodontic treatment, etc.)',
                        onChanged: (value) => _onUpdate(
                          formData.copyWith(preOperativeTreatment: value),
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
                    title: 'Primary Diagnosis',
                    children: [
                      Gap(size: 4),
                      Text('Diagnosis', style: TextStyle(color: Colors.black)),
                      Gap(size: 4),
                      DefaultDropdown(
                        initialValue: data?.primaryDiagnosis,
                        items: kDiagnosis,
                        onChanged: (value) => _onUpdate(
                          formData.copyWith(primaryDiagnosis: value),
                        ),
                      ),
                      Gap(size: 8),
                      Text(
                        'Secondary Diagnosis',
                        style: TextStyle(color: Colors.black),
                      ),
                      Gap(size: 4),
                      DefaultTextfield(
                        hint: 'Enter secondary diagnosis (optional)',
                        initial: data?.secondaryDiagnosis.preferNullWhenEmpty,
                        onChanged: (value) => _onUpdate(
                          formData.copyWith(secondaryDiagnosis: value),
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
                    title: 'Pierre Robin Sequence',
                    trailing: DefaultSwitch(
                      value: formData.clientHasPierreRobinSequence,
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(clientHasPierreRobinSequence: value),
                      ),
                    ),
                    children: [
                      Gap(size: 4),
                      if (formData.clientHasPierreRobinSequence) ...[
                        TitleForm(title: 'Date Diagnosed'),
                        Gap(size: 4),
                        DefaultDatePicker(
                          selected: formData
                              .pierreRobinSequenceDetail
                              .diagnosisDate
                              .convertFromApiNullable,
                          onChanged: (value) => _onUpdate(
                            formData.copyWith(
                              pierreRobinSequenceDetail: formData
                                  .pierreRobinSequenceDetail
                                  .copyWith(
                                    diagnosisDate: value.convertToStringForApi,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  Divider(
                    height: 32,
                    thickness: 8,
                    color: ColorPalette.greyScaleBlack10,
                  ),
                  ReportGroup(
                    title: 'Syndrome',
                    trailing: DefaultSwitch(
                      value: formData.clientHasSyndrome,
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(clientHasSyndrome: value),
                      ),
                    ),
                    children: [
                      Gap(size: 4),
                      if (formData.clientHasSyndrome) ...[
                        TitleForm(title: 'Specify Syndrome'),
                        Gap(size: 4),
                        DefaultTextfield(
                          hint: 'Enter specify syndrome',
                          initial: formData
                              .clientSyndromeDetail
                              .diagnosisName
                              .preferNullWhenEmpty,
                          onChanged: (value) => _onUpdate(
                            formData.copyWith(
                              clientSyndromeDetail: formData
                                  .clientSyndromeDetail
                                  .copyWith(diagnosisName: value),
                            ),
                          ),
                        ),
                        Gap(size: 8),
                        TitleForm(title: 'Date Diagnosed'),
                        Gap(size: 4),
                        DefaultDatePicker(
                          selected: formData
                              .clientSyndromeDetail
                              .diagnosisDate
                              .convertFromApiNullable,
                          onChanged: (value) => _onUpdate(
                            formData.copyWith(
                              clientSyndromeDetail: formData
                                  .clientSyndromeDetail
                                  .copyWith(
                                    diagnosisDate: value.convertToStringForApi,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  Divider(
                    height: 32,
                    thickness: 8,
                    color: ColorPalette.greyScaleBlack10,
                  ),
                  ReportGroup(
                    title: 'Other Congental Deformity',
                    trailing: DefaultSwitch(
                      value: formData.clientHasOtherCongenitalDeformity,
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          clientHasOtherCongenitalDeformity: value,
                        ),
                      ),
                    ),
                    children: [
                      Gap(size: 4),
                      // TODO: Here not implemnt because api data
                      if (formData.clientHasOtherCongenitalDeformity) ...[
                        TitleForm(title: 'Specify'),
                        Gap(size: 4),
                        DefaultTextfield(hint: 'Enter specify'),
                        Gap(size: 8),
                        TitleForm(title: 'Date Diagnosed'),
                        Gap(size: 4),
                        DefaultDatePicker(onChanged: (value) {}),
                      ],
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: ListenableBuilder(
        listenable: _apiLoaderController,
        builder: (_, child) {
          final value = _apiLoaderController.state.data;
          if (value == null) return SizedBox.shrink();
          return BottomAreaBar(
            children: [
              PrimaryButton(text: 'Simpan', width: .infinity, onPressed: () {}),
            ],
          );
        },
      ),
    );
  }
}
