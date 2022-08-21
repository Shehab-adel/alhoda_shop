import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  TextForm({Key? key, required this.formKey}) : super(key: key);

  final formKey;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: formKey,
      onChanged: (text) {},
      controller: TextEditingController(),
      style: const TextStyle(color: Colors.black),
      cursorColor: Colors.black,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          fillColor: Colors.white,
          focusColor: Colors.red,
          hintText: 'Type Complaint Here..',
          hintStyle: const TextStyle(
              color: Colors.black45, fontSize: 18, letterSpacing: 0.5),
          filled: true,
          contentPadding: EdgeInsets.only(top: 27, bottom: 27, left: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue, width: 2),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue, width: 2),
          )),
    );
  }
}
