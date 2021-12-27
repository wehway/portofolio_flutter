// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, dead_code

import 'package:top_train/cubit/page_cubit.dart';
import 'package:top_train/ui/pages/home_page.dart';
import 'package:top_train/ui/pages/setting_page.dart';
import 'package:top_train/ui/pages/transaction_page.dart';
import 'package:top_train/ui/pages/wallet_page.dart';
import 'package:top_train/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return Walletpage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
    }

    Widget customButtonNavigation() {
      return Flexible(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomBottomNavigationItem(
                  index: 0,
                  imageUrl: 'assets/icon_home.png',
                ),
                CustomBottomNavigationItem(
                  index: 1,
                  imageUrl: 'assets/icon_booking.png',
                ),
                CustomBottomNavigationItem(
                  index: 2,
                  imageUrl: 'assets/icon_card.png',
                ),
                CustomBottomNavigationItem(
                  index: 3,
                  imageUrl: 'assets/icon_setting.png'),
              ],
            ),
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customButtonNavigation(),
            ],
          ),
        );
      },
    );
  }
}
