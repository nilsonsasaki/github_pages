import 'package:flutter/material.dart';

import 'package:github_pages/ui/screens/my_home_page.dart';
import 'package:github_pages/ui/screens/pv_sizing_app.dart';

class GithubPage extends StatelessWidget {
  const GithubPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'GithubPages',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        MyHomePage.routeName: (context) => const MyHomePage(),
        PvSizingApp.routeName: (context) => const PvSizingApp(),
      },
    );
  }
}

