import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login ({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
           ],),
           ) ,
           ),
      ),
    );
  }
}
