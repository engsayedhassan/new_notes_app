import 'package:flutter/material.dart';
import 'package:new_notes_app/widgets/custom_button_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomAppBar({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        CustomButtonIcon(icon: icon,),
      ],
    );
  }
}
