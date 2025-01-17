import 'package:flutter/material.dart';

class AnswerButtons extends StatelessWidget {
  const AnswerButtons(this.answer, this.excution, {super.key});
  final String answer;
  final void Function() excution;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: excution,
        style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 33, 1, 95)
        ),
       child: Text(answer, textAlign: TextAlign.center,),
        );
  }
}
