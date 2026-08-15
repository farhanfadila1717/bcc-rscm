import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/default_appbar.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'sign_in_patient_page_action_mapper.dart';

class SignInPatientPage extends StatefulGlobalActionMapper
    with SignInPatientPageActionMapper {
  const SignInPatientPage({super.key});

  @override
  State<SignInPatientPage> createState() => _SignInPatientPageState();
}

class _SignInPatientPageState extends State<SignInPatientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 24, 20, 24),
        children: [
          Text(
            'Halo, Selamat Datang',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Gap(size: 10),
          Text(
            'Menghadapi Bibir Sumbing dengan Kepercayaan dan Informasi. Semua yang Anda butuhkan, satu klik saja.',
          ),
          Gap(size: 24),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Masukkan email',
            ),
          ),
          Gap(size: 16),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Masukkan password',
            ),
          ),
          Gap(size: 16),
          Align(
            alignment: .centerRight,
            child: TextButton(onPressed: () {}, child: Text('Lupa Password?')),
          ),
          Gap(size: 24),
          ElevatedButton(
            onPressed: widget.goToHomePatient,
            child: Text("Login"),
          ),
          Gap(size: 40),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Tidak memiliki akun? '),
                TextSpan(
                  text: 'Buat Akun',
                  style: TextStyle(
                    fontWeight: .bold,
                    color: ColorPalette.blueSecondary,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ],
            ),
            textAlign: .center,
          ),
        ],
      ),
    );
  }
}
