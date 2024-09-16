import 'dart:math';

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MultiInput extends StatefulWidget {
  MultiInput({super.key, required this.colorcontroller});

  MultiValueDropDownController colorcontroller;

  final List<String> intialdropdownlist = [
    'name1',
    'name3',
  ];

  final List<DropDownValueModel> dropdownlist = [
    const DropDownValueModel(name: 'name1', value: "value1"),
    const DropDownValueModel(name: 'name3', value: "value3"),
    const DropDownValueModel(name: 'name6', value: "value6"),
    const DropDownValueModel(name: 'name7', value: "value7"),
    const DropDownValueModel(name: 'name8', value: "value8"),
  ];

  @override
  State<MultiInput> createState() => _MultiInput();
}

class _MultiInput extends State<MultiInput> {
  @override
  Widget build(context) {
    return DropDownTextField.multiSelection(
      controller: widget.colorcontroller,
      //initialValue: widget.intialdropdownlist,
      dropDownList: widget.dropdownlist,
      textFieldDecoration: const InputDecoration(
        hintText: 'Select Colors ',
        border: OutlineInputBorder(),
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      displayCompleteItem: true,
      onChanged: (val) {
        log(val);
      },
    );
  }
}
