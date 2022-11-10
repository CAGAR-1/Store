import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData? icon;
  final bool isPassword;
  final String? Function(String?)? validator;
  const CustomTextField(
      {Key? key,
      required this.controller,
      this.label = "Email",
      this.validator,
      this.icon,
      this.isPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: isPassword,
        cursorColor: Color(0xFF6A62B7),
        controller: controller,
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFF6A62B7).withAlpha(
                50), //Yo mobile anusar color ko brigtness ma change hunxa

            enabledBorder: OutlineInputBorder(
              //border ho change haneko
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(20),
            ),
            hintText: label, //Label text ma change garda ne hunxa
            prefixIcon: Icon(
              icon,
              color: Color(0xFF6A62B7),
            )),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter $label';
          }
          return validator != null ? validator!(value) : null;
        },
      ),
    );
  }
}
