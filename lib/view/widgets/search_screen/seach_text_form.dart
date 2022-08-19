import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchTextForm extends StatelessWidget {
  SearchTextForm({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (searchName) {},
      controller: TextEditingController(),
      style: const TextStyle(color: Colors.black),
      cursorColor: Colors.black,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          fillColor: Colors.white,
          focusColor: Colors.red,
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintText: 'Search'.tr,
          hintStyle: const TextStyle(
              color: Colors.black45, fontSize: 18, fontWeight: FontWeight.w500),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(12)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(12)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(12))),
    );
  }
}