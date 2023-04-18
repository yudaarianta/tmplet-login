import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _obscureText = true;
  bool _isloding = false;
  
  Widget _authTitel() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Login',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 3),
          Text('Enter your email & password'),
        ],
      ),
    );
  }

  Widget _inputEmail() {
    return Container(
      
      child: TextField(
        decoration: InputDecoration(hintText: 'Email'),
      ),
    );
  }

  Widget _inputPassword() {
    return Container(
      child: TextField(
        obscureText:_obscureText  ,
        decoration: InputDecoration(
            hintText: 'Password',
            suffixIcon: IconButton(
              icon: Icon(Icons.visibility),
              onPressed: () {},
            )),
      ),
    );
  }

  Widget _forgotPassword() {
    return GestureDetector(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
            color: Colors.transparent,
            padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
            child: Text('Forget Password ?')),
      ),
      onTap: () {
        print('Forget Password ?');
      },
    );
  }

  Widget _inputsubmit() {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            //_Loginsementara;
          },
          child: Text('Login'),
        ));
  }

  Widget _textDiver() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(child: Divider()),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'OR CONNECT WITH',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          Expanded(child: Divider()),
        ],
      ),
    );
  }

  Widget _googlelesSingnIn() {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            child:
            Text('Google');
          },
          child: Text('Google'),
        ));
  }

  Widget _textRegister() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Dont have an account yet?'),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.transparent,
              child: Text(
                'Register',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {
              print('Register');
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Center(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _authTitel(),
              _inputEmail(),
              _inputPassword(),
              _forgotPassword(),
              _inputsubmit() ,
              _textDiver(),
              _googlelesSingnIn(),
              _textRegister(),
            ],
          ),
        ),
      ),
    ));
  }
//   void _Loginsementara()async{
//      setState(() {
//        _isloding = true;
//      });
// //
//          await Future.delayed(const Duration(seconds: 2));

//     // ignore: use_build_context_synchronously
//     Navigator.pushReplacement(context,
//         MaterialPageRoute(builder: (context) =>  const HOME() ));
//   }
 }
