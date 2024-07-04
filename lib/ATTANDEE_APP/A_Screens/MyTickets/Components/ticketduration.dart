import 'package:flutter/material.dart';

class ticketduration extends StatefulWidget {
  final Function(String) onButtonSelected;

  const ticketduration({Key? key, required this.onButtonSelected})
      : super(key: key);

  @override
  State<ticketduration> createState() => _ticketdurationState();
}

class _ticketdurationState extends State<ticketduration> {
  TextEditingController _selectedButtonController = TextEditingController();
  String _selectedButton = 'Button 1';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildElevatedButton('Button 1', 'Upcoming'),
          buildElevatedButton('Button 2', 'Completed'),
        ],
      ),
    );
  }

  Widget buildElevatedButton(
      String buttonValue, String buttonText) {
    return ElevatedButton(
      onPressed: () {
        _handleButtonSelection(buttonValue);
        widget.onButtonSelected(buttonValue); // Call the callback with the selected button
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            return _selectedButton == buttonValue
                ? const Color(0xFFDEFBB8)
                : Colors.white;
          },
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
              (Set<MaterialState> states) {
            if (_selectedButton != buttonValue) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(
                  color: Color(0xFFF1F1F2),
                ),
              );
            } else {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              );
            }
          },
        ),
        elevation: MaterialStateProperty.all(0),
      ),
      child: Center(
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 13.0,
            color: Colors.black,
            fontFamily: 'SatoshiMedium',
          ),
        ),
      ),
    );
  }

  void _handleButtonSelection(String buttonValue) {
    setState(() {
      _selectedButton = buttonValue;
      _selectedButtonController.text = buttonValue;
    });
  }
}
