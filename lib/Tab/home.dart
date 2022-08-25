import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:paidwik/Appconstant/imagefile.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Widget/text.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List image = [
    'assest/bank-trafer.png',
    'assest/credit_card.png',
    'assest/pos_transcation.png',
    'assest/help.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.clrBlack,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            SizedBox(
              height: 5.h,
            ),
            textWidgetDart('PaidKwik', AppColor.clrWhite),
            SizedBox(
              height: 5.h,
            ),
            CarouselSlider.builder(
              itemCount: 8,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assest/image.png'))),
              ),
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 2,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                image.length,
                (index) => Container(
                  height: 10.h,
                  width: 8.h,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('${image[index]}'),
                          fit: BoxFit.fill)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
