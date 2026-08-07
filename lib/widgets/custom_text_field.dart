import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final int maxLines;
  final Function(String)? onChanged;
  final TextInputType? inputType;

  const CustomTextField({
    super.key,
    this.inputType,
    required this.text,
    this.onChanged,
    required this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      onChanged: onChanged,
      maxLines: maxLines,
      style: TextStyle(
        color: Colors.white,
        overflow: TextOverflow.ellipsis,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        hintText: text,
        hintStyle: TextStyle(
          color: Colors.white,
          overflow: TextOverflow.ellipsis,
        ),
        enabledBorder: outLineInputBorder(),
        focusedBorder: outLineInputBorder(),
        focusedErrorBorder: outLineInputBorder(color: Colors.red),
        errorBorder: outLineInputBorder(color: Colors.red),
      ),
    );
  }

  OutlineInputBorder outLineInputBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
