import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('ar'),
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [
        Locale('en', 'GB'),
        Locale('en', 'US'),
        Locale('ar'),
        Locale('zh'),
      ],
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 400,
                    child: RangeDatePicker(
                      onMonthYearChanged: (date) {
                        print("Selected month: $date");
                      },

                      centerLeadingDate: true,
                      minDate: DateTime(2020),
                      maxDate: DateTime(2024),
                      initialDate: DateTime(2023, 1),


                      // disabledDayPredicate: (date) {
                      //   return date.weekday == DateTime.sunday || date.weekday == DateTime.saturday;
                      // },
                      // disabledCellsDecoration: const BoxDecoration(
                      //   color: Colors.,
                      // ),
                      disabledCellsTextStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
