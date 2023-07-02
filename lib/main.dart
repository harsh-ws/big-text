import 'package:flutter/material.dart';
import 'messageScreen.dart';
import 'input_screen.dart';

void main() => runApp(const BigText());

class BigText extends StatelessWidget {
  static const String id = "mainPage";
  const BigText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
            useMaterial3: true,
            textTheme: const TextTheme(
                bodyLarge: TextStyle(color: Colors.black12)
            )
        ),
        initialRoute: InputScreen.id,
        routes: {
          InputScreen.id: (context) => const InputScreen(),
          DisplayText.id: (context) => DisplayText(message: ""),
        }
    );
  }
}