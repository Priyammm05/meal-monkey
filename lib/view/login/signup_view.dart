import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_extension.dart';
import 'package:meal_monkey/view/login/login_view.dart';
import 'package:meal_monkey/view/login/otp_view.dart';
import 'package:meal_monkey/widget/round_button.dart';
import 'package:meal_monkey/widget/round_textfield.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 64,
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "Add your details to sign up",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: media.height * 0.035,
              ),
              RoundTextField(
                hintText: "Name",
                controller: txtName,
                obscureText: false,
              ),
              SizedBox(
                height: media.height * 0.035,
              ),
              RoundTextField(
                hintText: "Email",
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
              ),
              SizedBox(
                height: media.height * 0.035,
              ),
              RoundTextField(
                hintText: "Mobile No",
                controller: txtMobile,
                keyboardType: TextInputType.phone,
                obscureText: false,
              ),
              SizedBox(
                height: media.height * 0.035,
              ),
              RoundTextField(
                hintText: "Address",
                controller: txtAddress,
                obscureText: false,
              ),
              SizedBox(
                height: media.height * 0.035,
              ),
              RoundTextField(
                hintText: "Password",
                controller: txtPassword,
                obscureText: true,
              ),
              SizedBox(
                height: media.height * 0.035,
              ),
              RoundTextField(
                hintText: "Confirm Password",
                controller: txtConfirmPassword,
                obscureText: true,
              ),
              SizedBox(
                height: media.height * 0.035,
              ),
              RoundButton(
                  title: "Sign Up",
                  onPressed: () {
                    //btnSignUp();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OTPView(
                          email: txtEmail.text,
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: media.height * 0.05,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Already have an Account? ",
                      style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                          color: TColor.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
