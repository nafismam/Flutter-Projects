import 'package:flutter/material.dart';
import 'package:expensetracking_app/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 17, 1, 55),
  //brightness: Brightness.light, // Optional
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: kColorScheme,
        useMaterial3: true, // Still works, but may be deprecated soon
        appBarTheme: AppBarTheme(
          backgroundColor: kColorScheme.primaryContainer,
          foregroundColor: kColorScheme.onPrimaryContainer,
        ),
        //scaffoldBackgroundColor: kColorScheme.background,
      ),
      home: Expenses(),
    ),
  );
}
