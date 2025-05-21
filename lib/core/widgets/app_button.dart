import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,

      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),

      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffB15CDE), Color(0xff7952FC)],
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          alignment: Alignment.center,
          child: Text('Next', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
