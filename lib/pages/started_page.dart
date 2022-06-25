// ignore_for_file: avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:ebook_ptpn_xi/utils/colors.dart';
import 'package:ebook_ptpn_xi/widgets/big_text_widget.dart';
import 'package:ebook_ptpn_xi/widgets/small_text_widget.dart';
import 'package:flutter/material.dart';

class StartedScreen extends StatefulWidget {
  StartedScreen({Key? key}) : super(key: key);

  @override
  State<StartedScreen> createState() => _StartedScreenState();
}

class _StartedScreenState extends State<StartedScreen> {
  final List images = [
    'assets/images/01.png',
    'assets/images/02.png',
    'assets/images/03.png',
    'assets/images/04.png',
  ];

  var currrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    print('current height is ' + MediaQuery.of(context).size.height.toString());
    Widget carousel() {
      return Container(
        width: double.infinity,
        child: Column(
          children: [
            CarouselSlider(
              items: images
                  .map(
                    (image) => ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        image,
                        width: 1000,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    currrentIndex = index;
                  });
                },
                enlargeCenterPage: true,
                height: MediaQuery.of(context).size.height * 0.5,
                autoPlay: false,
              ),
            ),
            const SizedBox(height: 21),
            Container(
              child: DotsIndicator(
                dotsCount: 4,
                position: currrentIndex.floorToDouble(),
                decorator: const DotsDecorator(
                  color: Color(0xffF0C9C9), // Inactive color
                  activeColor: Color(0xffCA484A),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        padding: const EdgeInsets.only(left: 55, right: 55),
        child: Column(
          children: [
            const SizedBox(height: 21),
            BigTextWidget(
              text: 'Selamat Datang',
              size: 28,
            ),
            const SizedBox(height: 3),
            BigTextWidget(
              text: 'di E-Book PTPN XI',
              size: 28,
            ),
            const SizedBox(height: 15),
            SmallTextWidget(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus justo elit, semper tristique tempus sollicitudin.',
              align: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget buttonStarted() {
      return Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 38),
        height: 64,
        width: 302,
        child: TextButton(
          onPressed: () {},
          child: BigTextWidget(
            text: 'Mulai',
            size: 20,
            color: const Color(0xffffffff),
          ),
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: AppColors.primary,
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 59, bottom: 31),
        child: Column(
          children: [
            carousel(),
            title(),
            buttonStarted(),
          ],
        ),
      ),
    );
  }
}
