import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tp3/app/ressources/strings.dart';
import 'homeRoute.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: Strings.values.keys.map((it) => Locale(it)),
      localizationsDelegates: [
        AppLocalizationsDelegate.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      onGenerateTitle: (BuildContext context) =>  Strings.of(context).title,
        //BR : Couleur aurait du, selon moi, être dans une constante.
      //BC : Formatage.
        theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      home: HomeRoute(),
    );
  }
}

