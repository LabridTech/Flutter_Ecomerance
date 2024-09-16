import 'package:flutter/material.dart';

/// Flutter code sample for [Checkbox].

// ignore: must_be_immutable
class CheckboxExample extends StatefulWidget {
  CheckboxExample({super.key, required this.changePrice, required this.price});

  final void Function(int) changePrice;
  int price;

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
        if (value == true) {
          widget.changePrice(widget.price);
        } else {
          widget.changePrice((widget.price * -1));
        }
      },
    );
  }
}
