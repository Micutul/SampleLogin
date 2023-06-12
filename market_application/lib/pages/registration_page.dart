import 'package:flutter/material.dart';
import 'package:market_application/components/autentificare_finish.dart';
import 'package:market_application/components/back_to_login.dart';
import 'package:market_application/components/my_textfield.dart';
import 'package:market_application/pages/login_page.dart';
import 'package:market_application/components/date.dart';
import 'package:market_application/components/sex_button.dart';
import 'package:market_application/components/pop_up.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({Key? key});

  // text editing controllers
  final numeController = TextEditingController();
  final prenumeController = TextEditingController();
  final dataNastereController = TextEditingController();
  final sexController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
      body: Column(
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

          const SizedBox(height: 20),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: FinishAutentification(
                    onTap: () {
                      singUserIn(context, numeController, prenumeController);
                    },
                  ),
                ),

                BackToLogin(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage())),
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),
        ],
      ),
    );
  }
}