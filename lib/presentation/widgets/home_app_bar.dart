import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/breakpoints.dart';
import 'package:getlinked_landing_page/core/constants/colors.dart';
import 'package:getlinked_landing_page/core/constants/sizes.dart';
import 'package:getlinked_landing_page/core/ui_util/fonts.dart';
import 'package:getlinked_landing_page/presentation/widgets/app_buttons.dart';
import 'package:getlinked_landing_page/presentation/widgets/more_menu_button.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar(
      {super.key,
      required this.onTimePressed,
      required this.onOverviewPressed,
      required this.onContactPressed,
      required this.onFAQsPressed,
      required this.onRegisterPressed});
  final VoidCallback onTimePressed;
  final VoidCallback onOverviewPressed;
  final VoidCallback onFAQsPressed;
  final VoidCallback onContactPressed;
  final VoidCallback onRegisterPressed;

  @override
  Widget build(BuildContext context) {
    // * This widget is responsive.
    // * On large screen sizes, it shows all the actions in the app bar.
    // * On small screen sizes, it shows only the shopping cart icon and a
    // * [MoreMenuButton].
    // ! MediaQuery is used on the assumption that the widget takes up the full
    // ! width of the screen. If that's not the case, LayoutBuilder should be
    // ! used instead.
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < Breakpoint.desktop) {
      return AppBar(
        flexibleSpace: ClipRRect(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: SizedBox(
            width: screenWidth,
            height: 70,
          ),
        )),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(
              height: 0.2,
              width: double.infinity,
              color: AppColors.lightGreyColor,
            )),
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(top: Sizes.p8),
          child: RichText(
            text: TextSpan(
              text: "Ted",
              style: AppTextStyles.headerTextStyle(
                  fontSize: 25, fontWeight: FontWeight.w500),
              // children: [
              //   TextSpan(
              //       text: "Tech",
              //       style: AppTextStyles.headerTextStyle(
              //           fontSize: 36,
              //           fontWeight: FontWeight.w700,
              //           color: AppColors.accentColor))
              // ]
            ),
          ),
        ),
        actions: [
          MoreMenuButton(
            onContactPressed: onContactPressed,
            onOverviewPressed: onOverviewPressed,
            onRegisterPressed: onRegisterPressed,
            onTimePressed: onTimePressed,
            onFAQsPressed: onFAQsPressed,
          ),
        ],
      );
    } else {
      return AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        flexibleSpace: ClipRRect(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: SizedBox(
            width: screenWidth,
            height: 80,
          ),
        )),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(
              height: 0.2,
              width: double.infinity,
              color: AppColors.lightGreyColor,
            )),
        titleSpacing: 30,
        title: Padding(
          padding: const EdgeInsets.only(top: Sizes.p8),
          child: RichText(
            text: TextSpan(
              text: "Ted",
              style: AppTextStyles.headerTextStyle(
                  fontSize: 28, fontWeight: FontWeight.w600),
              // children: [
              //   TextSpan(
              //       text: "Tech",
              //       style: AppTextStyles.headerTextStyle(
              //           fontSize: 36,
              //           fontWeight: FontWeight.w700,
              //           color: AppColors.accentColor))
              // ]
            ),
          ),
        ),
        actions: [
          CustomTextButton(onTap: onTimePressed, text: "Home"),
          gapW16,
          CustomTextButton(onTap: onOverviewPressed, text: "Projects"),
          gapW16,
          CustomTextButton(onTap: onFAQsPressed, text: "Articles"),
          gapW16,
          CustomTextButton(onTap: onContactPressed, text: "Experience"),
          gapW16,
          Padding(
            padding: const EdgeInsets.all(Sizes.p16),
            child: ButtonWidget(
              onTap: onRegisterPressed,
              text: "Contact",
              width: 172,
            ),
          ),
          gapW16,
        ],
      );
    }
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(80);
}
