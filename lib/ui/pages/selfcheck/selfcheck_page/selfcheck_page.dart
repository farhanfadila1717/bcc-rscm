import 'package:bcc_rscm/core/api/controllers/self_check_controller.dart';
import 'package:bcc_rscm/core/extensions/extensions.dart';
import 'package:bcc_rscm/core/models/patient/selfcheck.dart';
import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/api_loader.dart';
import 'package:bcc_rscm/ui/components/default_appbar.dart';
import 'package:bcc_rscm/ui/components/default_empty_view.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';

import 'selfcheck_page_action_mapper.dart';

class SelfcheckPage extends StatefulGlobalActionMapper
    with SelfcheckPageActionMapper {
  const new({super.key, required this.id});

  final String id;

  @override
  State<SelfcheckPage> createState() => _SelfcheckPageState();
}

class _SelfcheckPageState extends State<SelfcheckPage> {
  late final ApiLoaderController<SelftcheckSummaryList?> _apiLoaderController;

  @override
  void initState() {
    super.initState();
    _apiLoaderController = ApiLoaderController(
      fetcher: () => widget.injector
          .get<SelfCheckController>()
          .selfCheckSummaryList(id: widget.id),
    );
  }

  @override
  void dispose() {
    _apiLoaderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Progress Pasien', centerTitle: false),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_rounded),
      ),
      body: ApiLoader(
        controller: _apiLoaderController,
        builder: (_, data) {
          final selfCheckSummaryList = data?.selfCheckSummaryList;

          if (selfCheckSummaryList.isNullOrEmpty) {
            return DefaultEmptyView();
          }

          return ListView.separated(
            padding: .fromLTRB(20, 10, 20, 50),
            itemBuilder: (_, index) {
              final item = selfCheckSummaryList[index];
              return GestureDetector(
                onTap: () => widget.goToDetailSelftcheck(item.selfCheckID),
                child: Container(
                  padding: .all(16),
                  decoration: BoxDecoration(
                    borderRadius: .circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: ColorPalette.greyScaleBlack10,
                        offset: Offset(0, 1),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Row(
                    spacing: 10,
                    children: [
                      Container(
                        padding: .all(10),
                        decoration: BoxDecoration(
                          color: ColorPalette.bluePrimary,
                          borderRadius: .circular(10),
                        ),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              item.selfCheckDate.convertFromApi.ddmmyyy,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: .bold,
                              ),
                            ),
                            Gap(size: 2),
                            Text('Photos', style: TextStyle(fontSize: 12)),
                            Text(
                              '${item.selfCheckItemCount} Photos',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: .w500,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.chevron_right_rounded),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (_, _) => Gap(size: 16),
            itemCount: selfCheckSummaryList!.length,
          );
        },
      ),
    );
  }
}
