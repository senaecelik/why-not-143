import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:why_not_143_team/constant.dart/color_constant.dart';
import 'package:why_not_143_team/constant.dart/string.dart';
import 'package:why_not_143_team/constant.dart/text_style.dart';

import '../widget/button_widget.dart';

class CoverPage extends StatelessWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,
          ),
          const _TitleWidget(),
          SizedBox(
            height: 40.h,
          ),
          const _SubTitleWidget(),
          SizedBox(
            height: 40.h,
          ),
          Flexible(
              child: BlueButtonWidget(
            text: StringConstant.instance.coverButtonText,
          ))
        ],
      ),
    );
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstant.instance.coverSubTitle,
      style: TextStyleConstant.instance.title2,
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstant.instance.coverTitle,
      style: TextStyleConstant.instance.largeTitle
          .copyWith(color: ColorConstant.instance.yankeBlue),
    );
  }
}
