import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_train/cubit/auth_cubit.dart';
import 'package:top_train/shared/theme.dart';

class Walletpage extends StatelessWidget {
  const Walletpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Center(
              child: Container(
                width: 300,
                height: 211,
                padding: EdgeInsets.all(defaultMargin),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image_card.png',
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: kWhiteColor.withOpacity(0.5),
                      blurRadius: 50,
                      offset: Offset(0, 10.0),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: whiteTextStyle.copyWith(
                                  fontWeight: light,
                                ),
                              ),
                              Text(
                                state.user.name,
                                style: whiteTextStyle.copyWith(
                                  fontSize: 20,
                                  fontWeight: medium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          margin: EdgeInsets.only(top: 10, right: 6),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/icon_train.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            'Pay',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: medium,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 41,
                    ),
                    Text(
                      'Balanced',
                      style: whiteTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      'IDR 500.000',
                      style: whiteTextStyle.copyWith(
                        fontSize: 26,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return SizedBox();
          }
        },
      );
  }
}