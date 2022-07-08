import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 250,
              ),
              child: Text(
                'Lets get Started',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Text(
                ('Sign up or login into see whats happening'),
              ),
            ),
            Center(child: Text('near you'),),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.indigo[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Text('continue with Email',
                      style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold))),
            ),
            SizedBox(
              height: 25,
            ),


            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 65),
                child: Row(
                  children: [
                    Image.asset('assets/google.jpg', height: 24, width: 40),
                    Text(
                      'Login with google',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 65),
                    child: Row(
                      children: [
                        Image.asset('assets/apple.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Login with apple',  style: TextStyle(fontSize: 18),),
                      ],
                    ),
                  )),
            ),
            SizedBox(height: 100,),
            Text('By signing up or logging in i accept the every '),
            Text('term of service and privacy policy')
          ],
        ),
      ),
    );
  }
}
