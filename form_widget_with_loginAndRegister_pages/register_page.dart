import 'package:flutter/material.dart';
import 'package:my_new_app/login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  var _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(),
              Column(
                children: <Widget>[
                  registerForm(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget registerForm(){
    String password;
    return Form(
      key:_formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Plant\nWorld',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 80,),
            TextFormField(
              validator: (inputText){
                if(inputText.isEmpty){
                  return'User required';
                }
              },
              decoration: InputDecoration(
              hintText: 'Enter user name',
            ),),
            TextFormField(
              validator: (inputText){
                if(inputText.isEmpty){
                  return'Email required';
                }
                if(!inputText.contains('@')){
                  return'Fill with email format';
                }
              },
              decoration: InputDecoration(
              hintText: 'Enter Email',
            ),),
            TextFormField(
              obscureText: true,
              validator: (inputPassword){
                password=inputPassword;
                if(password.isEmpty){
                  return 'Password required';
                }
                if(password.length<5){
                  return'Enter password more than five keys';
                }
              },
              decoration: InputDecoration(
              hintText: 'Enter Password',
            ),),
            TextFormField(
              obscureText: true,
              validator: (inputRePassword){
                if(inputRePassword.isEmpty){
                  return'Re-type your password';
                }
                if(inputRePassword!=password){
                  return'Re-type password is not match';
                }
              },
              decoration: InputDecoration(
              hintText: 'Re-enter your password',
            ),),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              child: RaisedButton(onPressed: (){
                _formKey.currentState.validate();
              },child: Text('Register'),),
            ),
            Container(
              width: double.infinity,
              child: FlatButton(onPressed: (){
                Navigator.of(context).pop(LoginPage());
              }, child: Text('Login')),
            )
      ],),
    );
  }
}