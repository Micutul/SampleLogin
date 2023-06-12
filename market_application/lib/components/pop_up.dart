import 'package:flutter/material.dart';


void singUserIn(BuildContext context,
    TextEditingController numeController,
    TextEditingController prenumeController,) {
  final String nume = numeController.text;
  final String prenume = prenumeController.text;

  if (
  nume.isEmpty || prenume.isEmpty
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Avertizment'),
          content: Text('Va rog sa competati toate campurile'),
          actions: [
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  };
}