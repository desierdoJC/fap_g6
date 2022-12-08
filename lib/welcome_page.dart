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
              child:Image.asset('lib/images/thm_logoFinal.png')
            ),
            TextButton(onPressed: ()=>{
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()))
            }, child: const Text('Start Shopping',
                style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 22)),),
          Container(
            alignment: FractionalOffset.bottomCenter,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(15,100,15,0),
            child: Text('Created By: Caringal, De Guia, Desierdo, Pagulayan',
            style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 12)),
          ),
          ],
        ),
      ),
    );
  }
}
