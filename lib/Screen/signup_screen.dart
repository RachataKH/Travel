import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytravel/Screen/login_screen.dart';  // Assuming this file exists
import 'package:mytravel/wiget/mytextfield.dart';  // Assuming this file exists

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final pwdController = TextEditingController();
  final repwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title Text
              Text(
                "Sign Up",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.normal,
                      ),
                ),
              ),
              Text(
                "Create your account to get started",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                      ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Name Field
              MyTextField(
                controller: nameController,
                labelText: "Name",
                hintText: "Enter Your Name",
                obscureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              // Email Field
              MyTextField(
                controller: emailController,
                labelText: "Email",
                hintText: "Enter Your Email",
                obscureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              // Password Field
              MyTextField(
                controller: pwdController,
                labelText: "Password",
                hintText: "Enter Your Password",
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              // Confirm Password Field
              MyTextField(
                controller: repwdController,
                labelText: "Confirm Password",
                hintText: "Enter Your Password Again",
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              // Sign Up Button
              MyButton(),
              const SizedBox(
                height: 20,
              ),
              // Row with Sign In Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to Login Screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text('Sign In'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle sign-up logic here
      },
      child: Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            'Sign Up',
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.titleLarge,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
