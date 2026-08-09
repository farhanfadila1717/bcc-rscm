import 'package:bcc_rscm/ui/components/default_check_box.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterPatientPage extends StatefulWidget {
  const RegisterPatientPage({super.key});

  @override
  State<RegisterPatientPage> createState() => _RegisterPatientPageState();
}

class _RegisterPatientPageState extends State<RegisterPatientPage> {
  bool isAgreed = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 24, 20, 24),
        children: [
          Text(
            'Buat Akun Baru',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Gap(size: 4),
          Text(
            'Daftar sekarang, raih akses penuh informasi & dukungan. Mulai perjalanan bersama kami!',
          ),
          Gap(size: 24),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Nama Lengkap',
              hintText: 'Masukkan Nama Anda',
            ),
          ),
          Gap(size: 16),
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
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Konfirmasi Password',
              hintText: 'Ulangi Password',
            ),
          ),

          Gap(size: 24),
          Row(
            crossAxisAlignment: .start,
            spacing: 8,
            children: [
              DefaultCheckBox(
                value: isAgreed,
                onChanged: (value) => setState(() => isAgreed = value),
              ),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    text: "Saya menyetujui ",
                    children: [
                      TextSpan(
                        text: "Ketentuan Layanan",
                        style: TextStyle(
                          color: theme.colorScheme.primary,
                          fontWeight: .w500,
                        ),
                      ),
                      TextSpan(text: " dan "),
                      TextSpan(
                        text: "Kebijakan Privasi",
                        style: TextStyle(
                          color: theme.colorScheme.primary,
                          fontWeight: .w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Gap(size: 32),
          Text.rich(
            textAlign: .center,
            TextSpan(
              text: "Sudah Punya Akun? ",
              children: [
                TextSpan(
                  text: "Login",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => context.push('/auth/sign-in-patient'),
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontWeight: .bold,
                  ),
                ),
              ],
            ),
          ),
          Gap(size: 32),
          ElevatedButton(onPressed: () {}, child: Text("Mulai")),
        ],
      ),
    );
  }
}
