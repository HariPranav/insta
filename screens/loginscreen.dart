import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/signupscreen.dart';

class LoginScreen extends StatefulWidget {
  static final String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // create form key for validation of the data entered into the app
  final _formkey = GlobalKey<FormState>();
  String _email;
  String _password;
  _submit() {
    if (_formkey.currentState.validate()) {
      _formkey.currentState.save();
      print(_email);
      print(_password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'InsaGlam',
              style: TextStyle(fontFamily: 'Billabong', fontSize: 60),
            ),
            Form(
              key: _formkey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Email'),
                      validator: (input) => !input.contains('@')
                          ? 'Please enter valid email '
                          : null,
                      onSaved: (input) => _email = input,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'password'),
                      obscureText: true,
                      validator: (input) =>
                          input.length < 6 ? 'must be atleast 6 char ' : null,
                      onSaved: (input) => _password = input,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 250,
                    child: FlatButton(
                      onPressed: _submit,
                      color: Colors.blue,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 250,
                    child: FlatButton(
                      onPressed: ()=> Navigator.pushNamed(context, SignupScreen.id),
                      color: Colors.blue,
                      child: Text(
                        'SignUp',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
