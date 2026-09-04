import 'package:flutter/material.dart';
import 'package:new_notes_app/views/widgets/constant_key.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final bool isLoading;
  const CustomTextButton({
    super.key,
    this.onTap,
    required this.text,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isLoading
              ? SizedBox(
                  width: 28,
                height: 28,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : Text(
                  text,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
