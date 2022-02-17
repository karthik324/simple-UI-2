import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomGridCard extends StatelessWidget {
  final IconData? icon;
  final FaIcon? faIcon;
  final Color? containerColor;
  final Widget text;
  CustomGridCard(
      {Key? key,
      this.faIcon,
      this.icon,
      required this.containerColor,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(11),
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: containerColor),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                (text),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
