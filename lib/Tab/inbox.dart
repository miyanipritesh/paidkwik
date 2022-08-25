import 'package:flutter/material.dart';
import 'package:paidwik/Appconstant/imagefile.dart';

import '../Widget/text.dart';

class InboxTab extends StatefulWidget {
  const InboxTab({Key? key}) : super(key: key);

  @override
  State<InboxTab> createState() => _InboxTabState();
}

class _InboxTabState extends State<InboxTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.clrBlack,
      body: Center(
        child: Container(
          height: 90,
          decoration:
              BoxDecoration(border: Border.all(color: AppColor.clrWhite12)),
          child: Row(
            children: [
              Column(
                children: [
                  textWidgetDart('Miyani Pritesh', AppColor.clrWhite),
                  textWidget('you have credit 50000 in your account',
                      AppColor.clrWhite54),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
