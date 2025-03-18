import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login ({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: const Color.fromARGB(255, 36, 128, 39),
            child: Center(
              child: Column(children: [
              SizedBox(
                height: 129,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Image.asset('lib/image/logo.png'),
                )
              ),
              Text(
                "Entre na sua conta Street Fighter.",
                style: GoogleFonts.tektur(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
                  SizedBox( height: 20,),
                  Container(
                  width: 180,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(40, 255, 255, 255),
                    borderRadius: BorderRadius.circular(8.5)
                  ),
                  child: Column(
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
                      SizedBox(height: 20,),

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
              ),
              Row(
                children: [
                Text('Esqueceu a senha?',
                 style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 200,
                  height: 80,
                  color: Colors.blue,
                )
                
           ],
           ),
          ),
        ),
      ),
    );
  }
}
