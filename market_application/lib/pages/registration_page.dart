import 'package:flutter/material.dart';
import 'package:market_application/components/Autentificare_finish.dart';
import 'package:market_application/components/Back_To_Login.dart';

import 'package:market_application/components/my_textfield.dart';


import 'package:market_application/pages/login_page.dart';
import 'package:market_application/components/date.dart';
import 'package:market_application/components/sex_button.dart';
import 'package:market_application/components/pop_up.dart';
import 'dart:async';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool showProgress = false;
  final numeController = TextEditingController();
  final prenumeController = TextEditingController();
  final data_nastereController = TextEditingController();
  final sexController = TextEditingController();

  void waitAndSingIn(BuildContext context) {
    setState(() {
      showProgress = true;
    });
    Timer(Duration(seconds: 5), () {
      singUserIn(context, numeController, prenumeController);

      setState(() {
        showProgress = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),

              // welcome back, you've been missed!
              Text(
                'Inregistrare:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 5),

              // username textfield
              MyTextField(
                controller: numeController,
                hintText: 'Nume',
                obscureText: false,
              ),

              const SizedBox(height: 5),

              // password textfield
              MyTextField(
                controller: prenumeController,
                hintText: 'Prenume',
                obscureText: false,
              ),

              const SizedBox(height: 5),

              DatePickerButton(),

              const SizedBox(height: 5),

              SexSelectionButton(),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),

                  FinishAutentification(
                    onTap: () => waitAndSingIn(context),
                    child: showProgress
                        ? CircularProgressIndicator()
                        : Text(
                      'Finalizare autentificare',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  // autentificare
                  BackToLogin(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginPage())),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}