import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:waheed_hassan/features/all_categories/presentation/views/all_categories.dart';
import 'package:waheed_hassan/features/all_categories_grid/presentation/views/all_categories_grid.dart';
import 'package:waheed_hassan/features/favourites/presentation/views/favourites_view.dart';

import 'features/all_products/presentation/views/all_products_view.dart';

void main() {
  runApp(const WaheedSuits());
}

class WaheedSuits extends StatelessWidget {
  const WaheedSuits({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('ar'),
      supportedLocales: const [Locale('ar'), Locale('en')],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'IBMPlexSansArabic',
        textTheme: TextTheme(
          bodySmall: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black),
          bodyLarge: TextStyle(color: Colors.black),
        ),
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: FavouritesView(),
    );
  }
}
