import 'package:flutter/material.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 75, 14, 136),
        body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: Text('You registration was successful!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.white)),
              ),
              const Icon(
                Icons.check,
                size: 250,
                color: Color.fromARGB(255, 131, 41, 184),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  textAlign: TextAlign.center,
                  'Your registration was succesful and we have send you a confirmation receipt to your email at:',
                  style: TextStyle(
                      color: Color.fromARGB(255, 184, 182, 182), fontSize: 20),
                ),
              ),
              const Text(
                'viniciusrovigo9@gmail.com',
                style: TextStyle(color: Color.fromARGB(255, 184, 182, 182)),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.white,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
