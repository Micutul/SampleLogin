import 'package:flutter/material.dart';
import 'package:market_application/components/my_button.dart';
import 'package:market_application/components/my_textfield.dart';
import 'package:market_application/components/square_tile.dart';
import 'package:market_application/components/autentificare.dart';
import 'package:market_application/pages/registration_page.dart';




class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.brown,
      body: SafeArea(
        child: SingleChildScrollView(padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),

              // logo
              const Icon(
                Icons.lock,
                size: 50,
              ),

              const SizedBox(height: 10),

              // welcome back, you've been missed!
              Text(
                'Bine ai revenit, ne-a fost dor de tine!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 5),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Nume de utilizator',
                obscureText: false,
              ),

              const SizedBox(height: 5),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Parola',
                obscureText: true,
              ),

              const SizedBox(height: 5),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Am uitat parola',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // sign in button
              MyButton(
                onTap: signUserIn,

              ),
              const SizedBox(height: 10),

              // autentificare
              MyButtonAutentificare(
                onTap: () => Navigator
                    .push(context,  MaterialPageRoute(builder: (_) => RegistrationPage())),
              ),

              const SizedBox(height: 15),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Sau logheaza-te cu: ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google button
                  SquareTile(imagePath: 'lib/images/google.png'),

                  SizedBox(width: 25),

                  // apple button
                  SquareTile(imagePath: 'lib/images/apple.png')
                ],
              ),

              const SizedBox(height: 50),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nu esti membru?',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Inregistreaza-te',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
