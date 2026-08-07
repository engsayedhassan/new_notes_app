import 'package:flutter/material.dart';
import 'package:new_notes_app/widgets/constant_key.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const CustomTextButton({super.key,this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: colorPrimaryKey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
