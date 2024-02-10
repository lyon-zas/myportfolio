import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';

class GetlinkedTextSection extends StatelessWidget {
  const GetlinkedTextSection({
    Key? key,
    required this.onRegisterPressed,
  }) : super(key: key);

  final VoidCallback onRegisterPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Gap(50),
        Text(
          "FLUTTER ENGINEER",
          style: AppTextStyles.textStyle(
              fontSize: screenWidth(context) >= Breakpoint.tablet &&
                      screenWidth(context) < 1100
                  ? 20.spMin
                  : 30.spMin,
              fontWeight: FontWeight.w800,
              color: AppColors.accentColor),
        ),
        const Gap(10),
        Flexible(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Eyimofe",
                    style: AppTextStyles.headerTextStyle(
                      fontSize: screenWidth(context) >= Breakpoint.tablet &&
                              screenWidth(context) < 1100
                          ? 50.spMin
                          : 70.spMin,
                      fontWeight: FontWeight.w800,
                    )),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Orimolade  ",
                        style: AppTextStyles.headerTextStyle(
                          fontSize: screenWidth(context) >= Breakpoint.tablet &&
                                  screenWidth(context) < 1100
                              ? 50.spMin
                              : 70.spMin,
                          fontWeight: FontWeight.w800,
                        )),
                    Flexible(flex: 1, child: Image.asset(PngAsset.chain)),
                  ],
                ),
              ],
            )),
        const Gap(50),
        Text(
          "I'm a passionate cross-platform mobile engineer \nwith a keen interest in cutting-edge technologies \nlike AI/ML, computer vision, and blockchain.",
          style: AppTextStyles.textStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

/// mobile vesion of [GetlinkedTextSection]
class GetlinkedTextSectionMobile extends StatelessWidget {
  const GetlinkedTextSectionMobile({
    Key? key,
    required this.onRegisterPressed,
  }) : super(key: key);
  final VoidCallback onRegisterPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: screenHeight(context, percent: 10),
            left: screenWidth(context, percent: 50),
            child: Image.asset(
              PngAsset.creativeIdea,
              width: 35,
              height: 35,
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(10),
            Padding(
              padding: const EdgeInsets.only(top: Sizes.p24, right: 0, left: 0),
              child: Text(
                "FLUTTER ENGINEER",
                textAlign: TextAlign.center,
                style: AppTextStyles.italicTextStyle(
                    fontSize: 16.spMin,
                    fontWeight: FontWeight.bold,
                    color: AppColors.accentColor),
              ),
            ),
            const Gap(20),
            // Text(
            //   "Eyimofe",
            //   style: AppTextStyles.headerTextStyle(
            //       fontSize: 32.spMin, fontWeight: FontWeight.w800),
            // ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  flex: 4,
                  child: RichText(
                    text: TextSpan(
                      text: "Eyimofe \nOrimolade  ",
                      style: AppTextStyles.headerTextStyle(
                        fontSize: 32.spMin,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 45),
                      child: Image.asset(
                        PngAsset.chain,
                        height: 32,
                        width: 32,
                      ),
                    )),
              ],
            ),
            const Gap(20),
            Text(
              "I'm a passionate cross-platform mobile engineer \nwith a keen interest in cutting-edge technologies \nlike AI/ML, computer vision, and blockchain.",
              textAlign: TextAlign.center,
              style: AppTextStyles.textStyle(
                fontSize: 13.spMin,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Gap(20),
          ],
        ),
      ],
    );
  }
}
