import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/auth/auth.dart';
import 'package:flutter_application_1/ui/auth/forgetpass.dart';
import 'package:flutter_application_1/ui/auth/newpass.dart';
import 'package:flutter_application_1/ui/auth/recoverycode.dart';
import 'package:flutter_application_1/ui/profile.dart';
import 'package:flutter_application_1/ui/reports/reports.dart';
import 'package:flutter_application_1/ui/home.dart';
import 'package:flutter_application_1/ui/root.dart';
import 'package:flutter_application_1/ui/root2.dart';
import 'package:flutter_application_1/ui/task/task.dart';
import 'package:flutter_application_1/ui/team/team.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

          scaffoldBackgroundColor: const Color.fromRGBO(23, 30, 38, 1),
          textTheme: GoogleFonts.robotoTextTheme(TextTheme(
              headline6: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: Color.fromRGBO(234, 234, 234, 1)),
              headline5: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(234, 234, 234, 1)),
              headline3: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(234, 234, 234, 1)),
              headline4: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(23, 30, 38, 1)),
              bodyText1: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(234, 234, 234, 1)),
              bodyText2: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(122, 135, 158, 1)),
              button: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFFD4ADFC),
              ),
              caption: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(122, 135, 158, 1)))),
          useMaterial3: true,
        ),
        home: AuthScreen());
  }
}
