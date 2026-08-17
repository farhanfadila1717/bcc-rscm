import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/default_appbar.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/components/primary_button.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';

class CameraGuidePage extends StatefulGlobalActionMapper {
  const CameraGuidePage({super.key});

  @override
  State<CameraGuidePage> createState() => _CameraGuidePageState();
}

class _CameraGuidePageState extends State<CameraGuidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Cara Mengambil Foto'),
      body: ListView(
        padding: .symmetric(vertical: 20, horizontal: 20),
        children: [
          Text(
            'Bersiap untuk melakukan pengambilan foto!',
            textAlign: .center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: .bold,
              color: Colors.black,
            ),
          ),
          Gap(size: 32),
          Image.asset('assets/images/img_camera_guide.png', height: 250),
          Gap(size: 32),
          Text(
            'Pastikan wajah menghadap ke depan dan mengisi kerangka foto seperti foto diatas!',
            textAlign: .center,
            style: TextStyle(color: ColorPalette.bluePrimary),
          ),
          Gap(size: 16),
          Text(
            'Klik tombol di bawah apabila sudah siap dilakukan pengambilan foto!',
            textAlign: .center,
            style: TextStyle(color: ColorPalette.bluePrimary),
          ),
          Gap(size: 40),
          PrimaryButton(
            text: 'Ya, Saya Siap',
            color: ColorPalette.orange40,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
