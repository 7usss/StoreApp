import 'package:flutter/material.dart';

class TextField1 extends StatelessWidget {
  TextField1({
    this.errorText1,
    this.keyboardType,
    super.key,
    this.onchange,
    this.prefix_icon,
    this.prefix_icon_color,
    this.controll,
    this.hint1,
    this.icon1,
  });
  final TextEditingController? controll;

  final String? hint1;
  final String? errorText1;
  final IconData? icon1;
  final TextInputType? keyboardType;
  final Widget? prefix_icon;
  final Color? prefix_icon_color;
  final Function(String)? onchange;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        onChanged: onchange,
        keyboardType: keyboardType,
        controller: controll,
        decoration: InputDecoration(
          errorText: errorText1,
          prefixIcon: prefix_icon,
          prefixIconColor: prefix_icon_color,
          hintText: hint1,
          hintTextDirection: TextDirection.ltr,
          labelStyle: const TextStyle(
            color: Color.fromARGB(255, 8, 197, 231),
            fontWeight: FontWeight.bold,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color.fromARGB(255, 223, 216, 216), width: 0),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 0),
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          fillColor: Colors.grey[200],
        ),
      ),
    );
  }
}
