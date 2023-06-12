import 'package:flutter/material.dart';

class FinishAutentification extends StatelessWidget {
  final void Function()? onTap;

  const FinishAutentification({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 100),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              Text(
                "Finalizare Autentificare",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}