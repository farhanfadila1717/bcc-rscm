import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CleftConnectPage extends StatefulWidget {
  const CleftConnectPage({super.key});

  @override
  State<CleftConnectPage> createState() => _CleftConnectPageState();
}

class _CleftConnectPageState extends State<CleftConnectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(
          'Cleft Connect',
          style: TextStyle(fontSize: 16, fontWeight: .w700),
        ),
      ),
      body: ListView.separated(
        padding: .symmetric(horizontal: 20, vertical: 24),
        itemBuilder: (_, index) =>
            CleftConnectItemCard(item: kCleftConnectList[index]),
        separatorBuilder: (_, _) => Gap(size: 16),
        itemCount: kCleftConnectList.length,
      ),
    );
  }
}

final class CleftConnect {
  const CleftConnect({
    required this.icon,
    required this.title,
    required this.description,
    required this.url,
  });

  final String icon;
  final String title;
  final String description;
  final String url;
}

final kCleftConnectList = <CleftConnect>[
  CleftConnect(
    icon: "assets/icons/ic_instagram.svg",
    title: "Instagram Pusat Layanan Sumbing & Kraniofasial Terpadu RSCM",
    description: "Kunjungi instagram kami untuk informasi yang menarik!",
    url: "https://www.instagram.com/cccrscmfkui?igsh=cTlhcXcwbDIyNHZy",
  ),
  CleftConnect(
    icon: "assets/icons/ic_whatsapp.svg",
    title: "WhatsApp Pusat Layanan Sumbing & Kraniofasial Terpadu RSCM",
    description: "Hubungi kami melalui WhatsApp untuk informasi lebih lanjut!",
    url: "https://wa.me/6281288740755",
  ),
];

class CleftConnectItemCard extends StatelessWidget {
  const CleftConnectItemCard({super.key, required this.item});

  final CleftConnect item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: .only(right: 10),
      decoration: BoxDecoration(
        border: .all(color: ColorPalette.greyScaleBlack10),
        borderRadius: .circular(10),
      ),
      child: Row(
        spacing: 10,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: ColorPalette.bluePrimary,
              borderRadius: .horizontal(left: .circular(10)),
            ),
            child: Center(
              child: SvgPicture.asset(item.icon, height: 34, width: 34),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: .center,
              spacing: 4,
              children: [
                Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: .w500,
                    color: Colors.black,
                  ),
                ),
                Text(item.description, style: TextStyle(fontSize: 10)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
