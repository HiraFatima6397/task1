import 'package:flutter/material.dart';
import 'package:task1/screen2.dart';

import 'Validation class.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool _isObscure = true;

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              child: Form(
                 key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 40,height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.indigo[900]),
                      child: Icon(Icons.arrow_back_ios_new_outlined,
                          color: Colors.white, size: 20),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Hey! Welcome back',
                      style: TextStyle(
                          color: Colors.indigo[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sign in to your account',
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(

                      decoration: InputDecoration(
                        hintText: 'email',
                        prefixIcon: Icon(Icons.account_circle_rounded),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                      ),
                      validator: ValidationEmail.Validationemail,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(

                        obscureText: _isObscure,
                        decoration: InputDecoration(
                    hintText: 'password',
                    prefixIcon: IconButton(
                      icon: Icon(
                        _isObscure
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                        ),
                        validator: ValidationPassword.Validationpassword,
                      ),
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
                      child: InkWell(onTap: (){if(_formKey.currentState!.validate())
    Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => Screen2()));
    },
                        child: Center(
                            child: Text('Sign in',
                                style: TextStyle(color: Colors.white, fontSize: 20))),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: Text(
                        'Or login with',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 20,
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
                    SizedBox(height: 72,),
                    Center(child: Text('Do not have an account?',style: TextStyle(fontSize: 18),)),
                    Center(child: Text('Sign UP',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
