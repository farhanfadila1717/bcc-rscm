import 'package:bcc_rscm/ui/components/collapse_mixin.dart';
import 'package:bcc_rscm/ui/components/default_appbar.dart';
import 'package:flutter/material.dart';

class DetailSurgeryPage extends StatefulWidget {
  const DetailSurgeryPage({super.key, required this.id});

  final String id;

  @override
  State<DetailSurgeryPage> createState() => _DetailSurgeryPageState();
}

class _DetailSurgeryPageState extends State<DetailSurgeryPage>
    with CollapseMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: DefaultAppBar(), body: ListView());
  }
}
