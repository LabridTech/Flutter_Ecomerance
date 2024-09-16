import 'package:flutter/material.dart';

const List<Color> list = <Color>[
  Colors.black,
  Colors.blue,
  Colors.green,
  Colors.red
];

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  Color dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<Color>(
      initialSelection: list.first,
      onSelected: (Color? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<Color>>((Color value) {
        return DropdownMenuEntry<Color>(
            value: value,
            label: value.toString().split('(0x')[1].split(')')[0]);
      }).toList(),
    );
  }
}
