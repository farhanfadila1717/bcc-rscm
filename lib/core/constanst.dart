import 'package:flutter/services.dart';

const kDiagnosis = [
  ' Cleft Soft Palate',
  'Cleft Hard Palate with Cleft Soft Palate',
  'Unilateral Cleft Lip',
  'Bilateral Cleft Lip',
  'Median Cleft Lip',
  'Unilateral Cleft Lip with Cleft Soft Palate',
  'Bilateral Cleft Lip with Cleft Soft Palate',
  'Unilateral Cleft Lip with Cleft Hard and Soft Palate',
  'Bilateral Cleft Lip with Cleft Hard and Soft Palate',
  'Congenital Malformation of the Palate',
  'Other',
];

const kGender = ['Laki-laki', 'Perempuan'];

const kSwitchYesNo = ['Ya', 'Tidak'];

const kFirstClassification = ['CLP Bilateral', 'CL Unilateral', 'CP', 'Lainya'];

final doubleInputFormat = FilteringTextInputFormatter.allow(
  RegExp(r'^\d+\.?\d*'),
);
