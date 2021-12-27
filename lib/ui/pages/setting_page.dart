// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:top_train/cubit/auth_cubit.dart';
import 'package:top_train/cubit/page_cubit.dart';
import 'package:top_train/shared/theme.dart';
import 'package:top_train/ui/widgets/custom_button.dart';
import 'main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: kRedColor,
              content: Text(state.error),
            ),
          );
        } else if(state is AuthInitial){
          context.read<PageCubit>().setpage(0);
          Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false);
        }
      },
      builder: (context, state) {

        if(state is AuthLoading){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Center(
            child: CustomButton(
          title: 'Sign Out',
          onPressed: () {
            context.read<AuthCubit>().signOut();
          },
          width: 220,
        ));
      },
    );
  }
}
