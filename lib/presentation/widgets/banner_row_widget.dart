import 'package:flutter/material.dart';

class BannerRowWidget extends StatelessWidget {
  final String text;
  final Function() onPress;
  const BannerRowWidget({Key? key, required this.text, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
           Text(
            text,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: onPress,
            child: const Text(
              'View all',
              style: TextStyle(
                color: Colors.indigoAccent,
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
