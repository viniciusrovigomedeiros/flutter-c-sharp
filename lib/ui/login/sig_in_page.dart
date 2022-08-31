import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/login/widgets/icon.dart';

import '../../controller/user_controller.dart';
import '../../model/user_model.dart';
import '../register/register_page.dart';
import 'widgets/slide.dart';
import 'widgets/text_editig_pattern.dart';

class SigInPage extends StatelessWidget {
  SigInPage({
    super.key,
  });
  final Color pageColor = const Color.fromARGB(255, 75, 14, 136);

  final UserController userControler = UserController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: pageColor,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Sign in ",
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 35, right: 35, top: 20, bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SocialMediaIcon(image: 'asset/images/1.png'),
                    SocialMediaIcon(image: 'asset/images/2.png'),
                    SocialMediaIcon(image: 'asset/images/3.png'),
                  ],
                ),
              ),
              SizedBox(
                height: 230,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "or use your email",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFieldPattern(
                            obscure: false,
                            controller: emailController,
                            hint: "Email",
                            icon: Icons.email),
                        SizedBox(
                          height: size.height * .03,
                        ),
                        TextFieldPattern(
                            obscure: true,
                            controller: passwordController,
                            hint: "Password",
                            icon: Icons.lock)
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "forgot your password? ",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
                width: size.width * 0.8,
                child: ElevatedButton(
                    onPressed: () async {
                      UserModel? user = await userControler.LoginValidation(
                          emailController.text, passwordController.text);
                      if (user != null) {
                        print("esse cara " + user.name + " deu boa");
                      } else {
                        print("esse cara não deu boa");
                      }
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ))),
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(color: pageColor, fontSize: 22),
                    )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Enter your personal details ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "and start journey with us",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      SlideTransitionAnimation(page: RegisterPage()));
                },
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
