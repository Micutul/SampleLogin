import 'package:flutter/material.dart';

class SexSelectionButton extends StatefulWidget{
  @override
  _SexSelectionButtonState createState() => _SexSelectionButtonState();
}
class _SexSelectionButtonState extends State<SexSelectionButton>{
  String? selectedSex;
  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sex:',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        ),
        RadioListTile<String>(
          title: const Text('Barbat'),
          value: 'Barbat',
          groupValue: selectedSex,
          onChanged: (value) {
            setState(() {

            selectedSex = value;
            });
          },
        ),
        RadioListTile<String>(
            title: const Text('Femeie'),
            value: 'Femeie',
            groupValue: selectedSex,
            onChanged: (value) {
              setState(() {
                selectedSex = value;
              });
            },
        ),
      ],
    );
  }
}