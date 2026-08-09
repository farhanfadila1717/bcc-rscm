import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:flutter/material.dart';

class SignInPatientPage extends StatefulWidget {
  const SignInPatientPage({super.key});

  @override
  State<SignInPatientPage> createState() => _SignInPatientPageState();
}

class _SignInPatientPageState extends State<SignInPatientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
          ElevatedButton(onPressed: () {}, child: Text("Login")),
        ],
      ),
    );
  }
}
