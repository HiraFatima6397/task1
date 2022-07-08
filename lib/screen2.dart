import 'package:flutter/material.dart';
import 'package:task1/screen1.dart';
import 'package:task1/screen3.dart';

import 'Validation class.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
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
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[900]),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Screen1()));
                        },
                        child: Icon(Icons.arrow_back_ios_new_outlined,
                            color: Colors.white, size: 20),
                      ),
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
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      validator: ValidationEmail.Validationemail,
                      decoration: InputDecoration(
                        hintText: 'email',
                        prefixIcon: Icon(Icons.account_circle_rounded),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: ValidationPassword.Validationpassword,
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        hintText: 'verify password',
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: ValidationPassword.Validationpassword,
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        hintText: 'Confirm password',
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
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          if (_formKey.currentState!.validate())
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Screen3()));
                        },
                        child: Center(
                            child: Text('Sign in',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: Text(
                        'Or Sign up with',
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
                            Image.asset('assets/google.jpg',
                                height: 24, width: 40),
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
                                Text(
                                  'Login with apple',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                        child: Text(
                      'Already have an account?',
                      style: TextStyle(fontSize: 18),
                    )),
                    Center(
                        child: Text(
                      'Sign UP',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
