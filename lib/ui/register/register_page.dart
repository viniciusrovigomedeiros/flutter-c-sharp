import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/confirmation/confirmation_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController? nomeController;
    TextEditingController? emailController;
    TextEditingController? senhaController;
    TextEditingController? senhaConfirmacaoController;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 75, 14, 136),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 30),
            const Text('Create Account',
                style: TextStyle(fontSize: 30, color: Colors.white)),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'asset/images/1.png',
                  scale: 20,
                ),
                const SizedBox(width: 10),
                Image.asset(
                  'asset/images/2.png',
                  scale: 20,
                ),
                const SizedBox(width: 10),
                Image.asset(
                  'asset/images/3.png',
                  scale: 20,
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'or use your email registration',
              style: TextStyle(color: Color.fromARGB(255, 184, 182, 182)),
            ),
            const SizedBox(height: 10),
            SizedBox(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: TextField(
                      controller: nomeController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person, color: Colors.grey),
                        border: OutlineInputBorder(),
                        hintText: 'Nome',
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mail, color: Colors.grey),
                        border: OutlineInputBorder(),
                        hintText: 'Email',
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: TextField(
                      controller: senhaController,
                      decoration: const InputDecoration(
                        prefixIcon:
                            Icon(Icons.lock_outline, color: Colors.grey),
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: TextField(
                      controller: senhaConfirmacaoController,
                      decoration: const InputDecoration(
                        prefixIcon:
                            Icon(Icons.lock_outline, color: Colors.grey),
                        border: OutlineInputBorder(),
                        hintText: 'Confirm Password',
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.white,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const ConfirmationPage()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              child: Text(
                textAlign: TextAlign.center,
                'To keep connected with us please login with your personal info',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255), fontSize: 17),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
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
