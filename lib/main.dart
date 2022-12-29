import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 219, 219, 219),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 67),
              child: Column(
                children: <Widget>[
                  Image.asset('./assets/images/logo.png'),
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Bem-vindo ao Sophia',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          fontFamily: 'Poppins',
                          color: Color.fromARGB(255, 0, 34, 102)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 52, right: 52, top: 5),
                    padding: const EdgeInsets.only(
                      left: 21,
                      right: 31,
                      top: 31,
                      bottom: 31,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 206, 206, 206),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'Informe seus dados abaixo',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Color.fromARGB(255, 0, 34, 102),
                          ),
                        ),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.account_circle_rounded),
                            labelText: 'Matrícula',
                          ),
                        ),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.remove_red_eye),
                            labelText: 'Senha',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 43),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Lembrar usuário?',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  color: Color.fromARGB(255, 80, 79, 79),
                                ),
                              ),
                              Checkbox(
                                onChanged: (bool? value) {},
                                value: false,
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 30),
                        ),
                        const Text(
                          'Esqueceu a senha?',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Color.fromARGB(255, 80, 79, 79),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 30),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 90, vertical: 7),
                            backgroundColor:
                                const Color.fromARGB(255, 0, 34, 102),
                          ),
                          onPressed: () {},
                          child: const Text('Entrar'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
