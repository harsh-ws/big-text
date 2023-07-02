import 'package:flutter/material.dart';
import 'package:testproject/input_screen.dart';
import 'package:auto_size_text/auto_size_text.dart';

//ignore: must_be_immutable
class DisplayText extends StatelessWidget {
  static const String id = "DisplayText";
  final String message;
  DisplayText({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Flexible(
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: AutoSizeText(
                    message,
                    maxLines: 1,
                    style: const TextStyle(
                        fontSize: 300,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: const Text('Back'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InputScreen(),
                      ),

                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
// LayoutBuilder(
// builder: (BuildContext context, BoxConstraints constraints) {
// return Text(
// 'This is some text',
// style: TextStyle(fontSize: constraints.maxHeight / 10),
// );
// },
// )


// Align(
// alignment: Alignment.center,
// child: SafeArea(
// child: AutoSizeText(
// message,
// style: const TextStyle(
// fontSize: 300,
// color: Colors.black,
// fontWeight: FontWeight.bold),
// maxLines: 11,
// ),
// ),
// ),
