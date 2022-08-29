import 'package:flutter/material.dart';

class SigInPage extends StatelessWidget {
  const SigInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Color.fromARGB(255, 75, 14, 136),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 30),
            Text(
              'Sign in',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.access_time_filled, size: 40, color: Colors.white),
                Icon(Icons.access_time_filled, size: 40, color: Colors.white),
                Icon(Icons.access_time_filled, size: 40, color: Colors.white)
              ],
            ),
            const SizedBox(height: 80),
            const Text(
              'or use your email account',
              style: TextStyle(color: Color.fromARGB(255, 184, 182, 182)),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail, color: Colors.grey),
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Senha',
                  prefixIcon: Icon(Icons.password, color: Colors.grey),
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            Text('Forgot your password',
                style: TextStyle(color: Color.fromARGB(255, 184, 182, 182))),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.white,
              ),
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 140, vertical: 10),
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
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              child: Text(
                textAlign: TextAlign.center,
                'Enter your personal details and start journey with us',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255), fontSize: 17),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'SIGN UP',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
