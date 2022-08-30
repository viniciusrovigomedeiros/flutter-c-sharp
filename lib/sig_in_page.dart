import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/register_page.dart';
import 'model.dart';
import 'repository.dart';

class SigInPage extends StatefulWidget {
  const SigInPage({Key? key}) : super(key: key);

  @override
  State<SigInPage> createState() => _SigInPageState();
}

class _SigInPageState extends State<SigInPage> {
  UsuarioRepository repository = UsuarioRepository(dio: Dio());
  late Future<List<UsuarioModel>> usuarios;
  @override
  Widget build(BuildContext context) {
    TextEditingController? nomeController;
    TextEditingController? senhaController;
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: const Color.fromARGB(255, 75, 14, 136),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 30),
              const Text(
                'Sign in',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
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
                'or use your email account',
                style: TextStyle(color: Color.fromARGB(255, 184, 182, 182)),
              ),
              const SizedBox(height: 30),
              SizedBox(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      child: TextField(
                        controller: nomeController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.mail, color: Colors.grey),
                          border: OutlineInputBorder(),
                          hintText: 'Email',
                          filled: true,
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      child: TextField(
                        obscureText: true,
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
                  ],
                ),
              ),
              const Text('Forgot your password',
                  style: TextStyle(color: Color.fromARGB(255, 184, 182, 182))),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.white,
                ),
                child: GestureDetector(
                  onTap: () {
                    repository.getAllUsers();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()),
                    );
                  },
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
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                child: Text(
                  textAlign: TextAlign.center,
                  'Enter your personal details and start journey with us',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 17),
                ),
              ),
              const SizedBox(height: 30),
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
      ),
    );
  }
}
