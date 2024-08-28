import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

DropdownButtonFormField2<String> buildDropdownButtonFormField2(
    {required List<String> itemsList,
    required String label,
    required double screenWidth,
    required double screenHeight}) {
  return DropdownButtonFormField2<String>(
    hint: Text(
      label,
      style: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
      overflow: TextOverflow.ellipsis,
    ),
    items: itemsList
        .map((String item) => DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ))
        .toList(),
    validator: (value) {
      if (value == null) {
        return 'Please select an option';
      }
      return value;
    },
    onChanged: (value) {
      // Handle the selected value
      print(value);
    },
    onSaved: (value) {
      // Save the selected value
      // _selectedOption = value;
    },
    buttonStyleData: ButtonStyleData(
      height: screenHeight * 0.07,
      padding: const EdgeInsets.only(left: 8, right: 12),
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.black),
      ),
      elevation: 2,
    ),
    iconStyleData: const IconStyleData(
      icon: Icon(
        Icons.arrow_forward_ios_outlined,
      ),
      iconSize: 14,
      iconDisabledColor: Colors.black,
    ),
    dropdownStyleData: DropdownStyleData(
      maxHeight: 150,
      width: screenWidth * 0.25,
      padding: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  );
}
