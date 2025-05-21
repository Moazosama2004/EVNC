import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SkipArrowWidget extends StatelessWidget {
  const SkipArrowWidget({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Skip', style: TextStyle(color: Colors.white)),
          SvgPicture.asset("assets/images/chevron-right.svg"),
        ],
      ),
    );
  }
}
