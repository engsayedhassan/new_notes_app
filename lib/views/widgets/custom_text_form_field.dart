import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final TextInputType? inputType;

  const CustomTextFormField({
    super.key,
    this.inputType,
    required this.hint,
    this.onSaved,
    required this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "field is required";
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      style: TextStyle(
        color: Colors.white,
        overflow: TextOverflow.ellipsis,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.white,
          overflow: TextOverflow.ellipsis,
        ),
        enabledBorder: outLineInputBorder(),
        focusedBorder: outLineInputBorder(),
        focusedErrorBorder: outLineInputBorder(),
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
