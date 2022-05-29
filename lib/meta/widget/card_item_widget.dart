import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:why_not_143_team/meta/helper/constant/color_constant.dart';
import 'package:why_not_143_team/meta/helper/constant/padding_constant.dart';
import 'package:why_not_143_team/meta/helper/constant/text_style.dart';

class CardItem extends StatelessWidget {
  final String text;
  final String buttonText;
  const CardItem({required this.text, required this.buttonText, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.3,
              1
            ],
            colors: [
              ColorConstant.instance.orange.withOpacity(0.6),
              ColorConstant.instance.orange.withOpacity(0.7),
            ]),
      ),
      child: Padding(
        padding: PaddingConstant.instance.genelButtonPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(text,
                style: TextStyleConstant.instance.textLargeMedium
                    .copyWith(color: ColorConstant.instance.white)),
            SizedBox(
              width: 100.h,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(buttonText),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  primary: ColorConstant.instance.white,
                  onPrimary: ColorConstant.instance.yankeBlue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
