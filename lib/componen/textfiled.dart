import 'package:flutter/material.dart';

class TextFiled extends StatelessWidget {
  const TextFiled({
    Key? key,
    required this.namecontroler,
  }) : super(key: key);

  final TextEditingController namecontroler;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: namecontroler,
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w500,
        ),
        fillColor: Colors.white,
        filled: true,
        hintText: "Name",
        contentPadding: const EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
