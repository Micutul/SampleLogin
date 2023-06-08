import 'package:flutter/material.dart';
import 'package:market_application/components/Autentificare_finish.dart';
import 'package:market_application/components/Back_To_Login.dart';
import 'package:market_application/components/my_button.dart';
import 'package:market_application/components/my_textfield.dart';
import 'package:market_application/components/square_tile.dart';
import 'package:market_application/components/autentificare.dart';
import 'package:market_application/pages/login_page.dart';




class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  // text editing controllers
  final numeController = TextEditingController();
  final prenumeController = TextEditingController();
  final data_nastereController = TextEditingController();
  final sexController = TextEditingController();
  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: SingleChildScrollView(padding: EdgeInsets.all(32),
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
              MyTextField(
                  controller: data_nastereController,
                  hintText: 'Data nastere',
                  obscureText: false),

              const SizedBox(height: 5),
              MyTextField(
                  controller: sexController,
                  hintText: 'Sex',
                  obscureText: false),


              const SizedBox(height: 20),

              FinishAutentification(
                onTap: signUserIn,

              ),
              const SizedBox(height: 20),

              // autentificare
              BackToLogin(
                onTap: () => Navigator
                    .push(context,  MaterialPageRoute(builder: (_) => LoginPage())),
              ),

              const SizedBox(height: 15),

            ],
          ),
        ),
      ),
    );
  }
}
