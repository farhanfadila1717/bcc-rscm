import 'package:bcc_rscm/core/api/controllers/self_check_controller.dart';
import 'package:bcc_rscm/core/extensions/list_extensions.dart';
import 'package:bcc_rscm/core/models/patient/selfcheck.dart';
import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/api_loader.dart';
import 'package:bcc_rscm/ui/components/default_appbar.dart';
import 'package:bcc_rscm/ui/components/default_empty_view.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/components/image_cover_card.dart';
import 'package:bcc_rscm/ui/components/primary_button.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';

import 'detail_selftcheck_page_action_mapper.dart';

class DetailSelftcheckPage extends StatefulGlobalActionMapper
    with DetailSelftcheckPageActionMapper {
  const new({super.key, required this.id});

  final String id;

  @override
  State<DetailSelftcheckPage> createState() => _DetailSelftcheckPageState();
}

class _DetailSelftcheckPageState extends State<DetailSelftcheckPage> {
  late final ApiLoaderController<SelfcheckDetailResponse?> _apiLoaderController;

  @override
  void initState() {
    super.initState();
    _apiLoaderController = ApiLoaderController(
      fetcher: () => widget.injector.get<SelfCheckController>().detailSelfCheck(
        id: widget.id,
      ),
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
      appBar: DefaultAppBar(centerTitle: false, title: 'Progress Pasien'),
      body: ApiLoader(
        controller: _apiLoaderController,
        builder: (_, data) {
          final assetItemList = data?.assetItemList;

          if (assetItemList.isNullOrEmpty) {
            return DefaultEmptyView();
          }

          return CustomScrollView(
            slivers: [
              SliverPadding(
                padding: .fromLTRB(20, 10, 20, 20),
                sliver: DecoratedSliver(
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
                  sliver: SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverMainAxisGroup(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Text(
                            'Photos (${assetItemList?.length})',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: .w600,
                            ),
                          ),
                        ),
                        SliverGap(size: 10),
                        SliverList.separated(
                          itemCount: assetItemList!.length,
                          itemBuilder: (_, index) {
                            final item = assetItemList[index];

                            return ImageCoverCard(
                              url: item.assetPhotoUrlPath,
                              borderRadius: .circular(10),
                            );
                          },
                          separatorBuilder: (_, _) => Gap(size: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: .fromLTRB(20, 0, 20, 20),
                sliver: DecoratedSliver(
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
                  sliver: SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverToBoxAdapter(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/img_camera_guide.png',
                            height: 150,
                          ),
                          Gap(size: 16),
                          Text(
                            'Bersiap untuk pengambilan foto!',
                            textAlign: .center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: .w500,
                            ),
                          ),
                          Gap(size: 4),
                          Text(
                            'Pastikan wajah menghadap kedepan dan mengisi kerangka foto seperti contoh diatas',
                            textAlign: .center,
                            style: TextStyle(fontSize: 12),
                          ),
                          Gap(size: 16),
                          PrimaryButton(
                            onPressed: () => widget.goToCamera(),
                            child: Text('Ambil Foto'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
