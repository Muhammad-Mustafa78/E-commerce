import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final void Function()? onpressed;
  const PrimaryButton({super.key, this.onpressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 45,
        width: double.infinity,
        child: ElevatedButton(
            onPressed: onpressed,
            child: Text(
              title,
            )));
  }
}
