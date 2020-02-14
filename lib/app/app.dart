import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tp3/app/ressources/strings.dart';
import 'homeRoute.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Langues supportées
      supportedLocales: Strings.values.keys.map((it) => Locale(it)),
      //Fournisseurs (appellés delegates par le framework)
      localizationsDelegates: [
        //Le votre doit être en premier
        AppLocalizationsDelegate.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      onGenerateTitle: (BuildContext context) =>  Strings.of(context).title,
        theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      home: HomeRoute(),
    );
  }
}

