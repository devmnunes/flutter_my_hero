import 'package:flutter/material.dart';
import 'package:flutter_my_hero/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: const Color.fromARGB(255, 36, 128, 39),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                    height: 129,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Image.asset('lib/image/logo.png'),
                    )),
                Text(
                  "Entre na sua conta Street Fighter.",
                  style: GoogleFonts.tektur(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(40, 255, 255, 255),
                      borderRadius: BorderRadius.circular(8.5)),
                  child: const Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.white),
                          icon: Icon(
                            Icons.email_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Palavra-passe",
                                hintStyle: TextStyle(color: Colors.white),
                                icon: Icon(
                                  Icons.key_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.visibility_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Row(children: [
                  Text(
                    'Esqueceu a senha?',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    width: 120,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeScreen()),
                          );
                        },
                        child: Text(
                          'Entrar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
