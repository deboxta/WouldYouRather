import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'strings.dart';
import 'homeRoute.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final strings = Strings.of(context);

    return MaterialApp(
      onGenerateTitle: (BuildContext context) => strings.title,
      title: strings.title,
        theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      home: HomeRoute(),
      //Langues supportées
      supportedLocales: Strings.values.keys.map((it) => Locale(it)),
      //Fournisseurs (appellés delegates par le framework)
      localizationsDelegates: [
        //Le votre doit être en premier
        AppLocalizationsDelegate.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
    );
  }
}

