import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:waheed_hassan/features/my_orders/presentation/views/my_orders_view.dart';
import 'package:waheed_hassan/features/shopping_cart/presentation/views/shopping_bag_contents.dart';

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
        colorScheme: .fromSeed(seedColor: Color(0xFFF6F6F6)),
      ),
      home: MyOrdersView(),
    );
  }
}
