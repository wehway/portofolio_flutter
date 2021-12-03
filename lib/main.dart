// ignore_for_file: unused_import, avoid_web_libraries_in_flutter, prefer_const_constructors


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_train/cubit/page_cubit.dart';
import 'package:top_train/ui/pages/bonus_page.dart';
import 'package:top_train/ui/pages/get_started_page.dart';
import 'package:top_train/ui/pages/home_page.dart';
import 'package:top_train/ui/pages/main_page.dart';
import 'package:top_train/ui/pages/sign_up_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:top_train/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageCubit(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/sign-up' : (context) => SignUpPage(),
          '/bonus' : (context) => BonusPage(),
          '/main': (context) => MainPage(),
          '/home': (context) => HomePage(),
        },
      ),
    );
  }
}