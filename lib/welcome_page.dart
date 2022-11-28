import 'package:flutter/material.dart';

import 'home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:Image.asset('lib/images/tgm_logo.png')
            ),
            const Text('Welcome to Mommy Badet\'s Online Store'),
            TextButton(onPressed: ()=>{
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()))
            }, child: const Text('Start Shopping'),),
          ],
        ),
      ),
    );
  }
}
