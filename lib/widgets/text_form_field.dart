import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final bool? expands;
  final int? maxLines;
  final Function(String?)? onSaved;
  const TextFormFieldWidget({
    super.key,
    required this.hintText,
    this.expands,
    this.maxLines,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field cannot be empty';
        }
        return null;
      },
      onSaved: onSaved,
      maxLines: maxLines,
      expands: expands ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
