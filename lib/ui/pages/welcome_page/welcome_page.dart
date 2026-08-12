import 'package:bcc_rscm/core/models/welcome_screen.dart';
import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/dot_indicator.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'welcome_page_action_mapper.dart';

class WelcomePage extends StatefulGlobalActionMapper
    with WelcomePageActionMapper {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late final CarouselSliderController _carouselController;
  @override
  void initState() {
    super.initState();
    _carouselController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: .centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: widget.goToRolePage,
            child: Text('Mulai'),
          ),
        ),
      ),
      body: SafeArea(
        child: CarouselSlider.builder(
          carouselController: _carouselController,
          itemCount: welcomeScreens.length,
          itemBuilder: (_, index, _) {
            final item = welcomeScreens[index];
            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
              child: ListView(
                children: [
                  Text(
                    item.title,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Gap(size: 30),
                  Image.asset(item.image, scale: item.scale, height: 400),
                  Text(item.description),
                  Gap(size: 30),
                  DotIndicator(
                    currentIndex: index,
                    itemCount: welcomeScreens.length,
                  ),
                  Gap(size: 30),
                ],
              ),
            );
          },
          options: CarouselOptions(
            viewportFraction: 1.0,
            height: MediaQuery.sizeOf(context).height,
            autoPlay: true,
            enableInfiniteScroll: false,
          ),
        ),
      ),
    );
  }
}
