import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytravel/Screen/signup_screen.dart';  // Assuming this file exists
import 'package:mytravel/wiget/mytextfield.dart';  // Assuming this file exists

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                "Login",
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
                "Welcome back! Please log in to continue.",
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
              // Login Button
              MyButton(),
              const SizedBox(
                height: 20,
              ),
              // Row with Sign Up Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to Sign Up Page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text('Sign Up'),
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
        // Handle login logic here
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
            'Login',
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
