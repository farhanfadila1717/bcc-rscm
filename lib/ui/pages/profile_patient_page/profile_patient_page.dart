import 'package:bcc_rscm/core/api/controllers/patient_controller.dart';
import 'package:bcc_rscm/core/constanst.dart';
import 'package:bcc_rscm/core/extensions/extensions.dart';
import 'package:bcc_rscm/core/models/patient/patient.dart';
import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/api_loader.dart';
import 'package:bcc_rscm/ui/components/collapse_mixin.dart';
import 'package:bcc_rscm/ui/components/default_appbar.dart';
import 'package:bcc_rscm/ui/components/default_check_box.dart';
import 'package:bcc_rscm/ui/components/default_date_picker.dart';
import 'package:bcc_rscm/ui/components/default_dropdown.dart';
import 'package:bcc_rscm/ui/components/default_empty_view.dart';
import 'package:bcc_rscm/ui/components/default_textfield.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/components/image_cover_card.dart';
import 'package:bcc_rscm/ui/components/primary_button.dart';
import 'package:bcc_rscm/ui/components/report_group.dart';
import 'package:bcc_rscm/ui/components/title_form.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePatientPage extends StatefulGlobalActionMapper {
  const ProfilePatientPage({super.key, required this.id});

  final String id;

  @override
  State<ProfilePatientPage> createState() => _ProfilePatientPageState();
}

class _ProfilePatientPageState extends State<ProfilePatientPage>
    with CollapseMixin {
  late final ScrollController _scrollController;
  late final ApiLoaderController<PatientDetailResponse?> _apiLoaderController;
  PatientDetailResponse? _patientDetailResponse;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _apiLoaderController = ApiLoaderController(
      fetcher: () =>
          widget.injector.get<PatientController>().patientDetail(id: widget.id),
    );
    listenCollapse(controller: _scrollController, maxOffset: 150);
  }

  PatientDetailResponse get formData =>
      _patientDetailResponse ?? _apiLoaderController.state.data!;

  void _onUpdate(PatientDetailResponse newValue) {
    EasyDebounce.debounce('profile-patient', Duration(milliseconds: 100), () {
      setState(() {
        _patientDetailResponse = newValue;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _apiLoaderController.dispose();
    EasyDebounce.cancel('profile-patient');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        systemOverlayStyle: .light,
        backgroundColor: ColorPalette.bluePrimary,
        iconColor: Colors.white,
      ),
      body: Scrollbar(
        controller: _scrollController,
        child: ApiLoader(
          controller: _apiLoaderController,
          builder: (_, data) {
            if (data == null) {
              return DefaultEmptyView();
            }

            final clientDetail = formData.clientDetail;
            final guardianDetail = formData.guardianDetail;
            final medicalHistoryDetail = formData.medicalHistoryDetail;

            return ListView(
              controller: _scrollController,
              children: [
                Container(
                  decoration: BoxDecoration(color: ColorPalette.bluePrimary),
                  padding: .fromLTRB(20, 20, 20, 20),
                  child: Column(
                    crossAxisAlignment: .start,
                    mainAxisAlignment: .end,
                    children: [
                      Text(
                        'Detail Pasien',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: .bold,
                        ),
                      ),
                      Text(
                        'Informasi pasien perdana',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      Gap(size: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: .circular(20),
                        ),
                        padding: .symmetric(horizontal: 8, vertical: 2),
                        child: Text(
                          clientDetail.clientID,
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
                  title: 'Informasi Pasien',
                  children: [
                    Gap(size: 4),
                    TitleForm(title: 'Nama Lengkap'),
                    Gap(size: 4),
                    DefaultTextfield(
                      initial: clientDetail.clientFullName,
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          clientDetail: clientDetail.copyWith(
                            clientFullName: value,
                          ),
                        ),
                      ),
                    ),
                    Gap(size: 10),
                    TitleForm(title: 'NIK'),
                    Gap(size: 4),
                    DefaultTextfield(
                      initial: clientDetail.clientIdentityNumber,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          clientDetail: clientDetail.copyWith(
                            clientIdentityNumber: value,
                          ),
                        ),
                      ),
                    ),
                    Gap(size: 10),
                    Row(
                      spacing: 8,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              TitleForm(title: 'Jenis Kelamin'),
                              Gap(size: 4),
                              DefaultDropdown(
                                initialValue: clientDetail.clientGender,
                                items: kGender,
                                onChanged: (value) => _onUpdate(
                                  formData.copyWith(
                                    clientDetail: clientDetail.copyWith(
                                      clientGender: value,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              TitleForm(title: 'Adopsi'),
                              Gap(size: 4),
                              DefaultDropdown(
                                initialValue:
                                    clientDetail.clientIsAdopted.toYaOrTidak,
                                items: kSwitchYesNo,
                                onChanged: (value) => _onUpdate(
                                  formData.copyWith(
                                    clientDetail: clientDetail.copyWith(
                                      clientIsAdopted: value.fromYaOrTidak,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Gap(size: 10),
                    TitleForm(title: 'Tanggal Registrasi'),
                    Gap(size: 4),
                    DefaultDatePicker(
                      selected: clientDetail
                          .clientRegistrationDate
                          .convertFromApiNullable,
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          clientDetail: clientDetail.copyWith(
                            clientRegistrationDate: value.convertToStringForApi,
                          ),
                        ),
                      ),
                    ),
                    Gap(size: 10),
                    TitleForm(title: 'Tempat & Tanggal Lahir'),
                    Gap(size: 4),
                    DefaultTextfield(
                      initial: clientDetail.clientBirthPlaceAndDate,
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          clientDetail: clientDetail.copyWith(
                            clientBirthPlaceAndDate: value,
                          ),
                        ),
                      ),
                    ),
                    Gap(size: 10),
                    TitleForm(title: 'Berat Saat Lahir (Kg)'),
                    Gap(size: 4),
                    DefaultTextfield(
                      initial: clientDetail.clientBirthWeightKg.toString(),
                      inputFormatters: [doubleInputFormat],
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          clientDetail: clientDetail.copyWith(
                            clientBirthWeightKg: num.tryParse(value) ?? 0.0,
                          ),
                        ),
                      ),
                    ),
                    Gap(size: 10),
                    TitleForm(title: 'Alamat Pasien'),
                    Gap(size: 4),
                    DefaultTextfield(
                      maxLines: 3,
                      initial: clientDetail.clientAddress,
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          clientDetail: clientDetail.copyWith(
                            clientAddress: value,
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
                  title: 'Informasi Wali / Orang Tua',
                  children: [
                    Gap(size: 4),
                    TitleForm(title: 'Nama Wali'),
                    Gap(size: 4),
                    DefaultTextfield(
                      initial: guardianDetail.guardianName,
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          guardianDetail: guardianDetail.copyWith(
                            guardianName: value,
                          ),
                        ),
                      ),
                    ),
                    Gap(size: 10),
                    TitleForm(title: 'Nomor HP'),
                    Gap(size: 4),
                    DefaultTextfield(
                      initial: guardianDetail.guardianPhone,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          guardianDetail: guardianDetail.copyWith(
                            guardianPhone: value,
                          ),
                        ),
                      ),
                    ),
                    Gap(size: 10),
                    TitleForm(title: 'Alamat'),
                    Gap(size: 4),
                    DefaultTextfield(
                      initial: guardianDetail.guardianAddress,
                      maxLines: 3,
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          guardianDetail: guardianDetail.copyWith(
                            guardianAddress: value,
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
                  title: 'Riwayat Pasien Perdana',
                  children: [
                    Gap(size: 4),
                    DefaultDropdown(
                      initialValue: medicalHistoryDetail
                          .medicalHistoryCleftClassification,
                      items: kFirstClassification,
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          medicalHistoryDetail: medicalHistoryDetail.copyWith(
                            medicalHistoryCleftClassification: value,
                          ),
                        ),
                      ),
                    ),
                    Gap(size: 10),
                    TitleForm(title: 'Foto Pasien Perdana'),
                    Gap(size: 4),
                    DottedBorder(
                      options: RoundedRectDottedBorderOptions(
                        dashPattern: [5, 5],
                        padding: .all(10),
                        strokeWidth: 2,
                        radius: .circular(16),
                        color: ColorPalette.greyScaleBlack30,
                      ),
                      child: Column(
                        spacing: 10,
                        children: [
                          ImageCoverCard(
                            url: medicalHistoryDetail.medicalHistoryPhotoURL,
                            borderRadius: .circular(12),
                          ),
                          PrimaryButton(text: 'Ubah Foto', onPressed: () {}),
                        ],
                      ),
                    ),
                    Gap(size: 16),
                    Row(
                      spacing: 4,
                      children: [
                        TitleForm(title: 'Meninggal Dunia'),
                        Spacer(),
                        DefaultCheckBox(
                          value: medicalHistoryDetail.medicalHistoryIsDeceased,
                          onChanged: (value) => _onUpdate(
                            formData.copyWith(
                              medicalHistoryDetail: medicalHistoryDetail
                                  .copyWith(medicalHistoryIsDeceased: value),
                            ),
                          ),
                        ),
                        Gap(size: 4),
                      ],
                    ),
                    Gap(size: 10),
                    TitleForm(title: 'Tanggal Meninggal Dunia'),
                    Gap(size: 4),
                    DefaultDatePicker(
                      selected: medicalHistoryDetail
                          .medicalHistoryDeathDate
                          .convertFromApiNullable,
                      onChanged: (value) => _onUpdate(
                        formData.copyWith(
                          medicalHistoryDetail: medicalHistoryDetail.copyWith(
                            medicalHistoryDeathDate:
                                value.convertToStringForApi,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
