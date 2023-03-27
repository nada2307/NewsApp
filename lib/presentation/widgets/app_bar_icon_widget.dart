import 'package:flutter/material.dart';

class AppBarIconWidget extends StatelessWidget {
  final IconData icon;
  void Function() onPressed;

  AppBarIconWidget({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey.withOpacity(0.1),
      radius: 20,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
