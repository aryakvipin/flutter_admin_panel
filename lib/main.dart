import 'package:flutter/material.dart';
import 'package:flutter_web_admin_dashboard/pages/widget/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'controllers/menu_controller.dart';
import 'controllers/user.dart';

/*
Title:Entry Point of a Web Application
Purpose:Entry Point of a Web Application
Created By:Kalpesh Khandla
Created Date: 20 Feb 2022
*/
void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => User())],
    child: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Admin Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
        ],
        child: MyLogin(),
      ),
    );
  }
}
