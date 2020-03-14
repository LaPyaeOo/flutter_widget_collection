import 'package:flutter/material.dart';
import 'package:my_new_app/register_page.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(),
            formField(),
          ],
        ),
      ),
    );
  }

  Widget formField() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Plant\nWorld',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                 color: Colors.white,
              ),
            ),
            SizedBox(height: 100,),
            TextFormField(
              style: TextStyle(
                color:  Colors.white,
              ),
              onSaved: (inputText){
                print(inputText);
              },
              validator: (input){
                if (input.isEmpty){
                  return 'Required Email';
                }
                if(!input.endsWith('.com')){
                  return 'Enter Email format';
                }
                if(!input.contains('@')){
                  return 'Enter Email format';
                }
              },
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hoverColor: Colors.white,
                hintText: 'Enter Email',
                hintStyle:  TextStyle(
                  color: Colors.white,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                )
              ),
            ),
            TextFormField(
              style:  TextStyle(
                color: Colors.white
              ),
              validator:  (input){
                if(input.isEmpty){
                  return 'Required  Password';
                }
              },
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter Password',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)
                )
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.white,
                onPressed: () {
                if(_formKey.currentState.validate()){
                  _formKey.currentState.save();
                };
              }, child: Text('Sign in')),
            ),
            Container(
              width: double.infinity,
              child: FlatButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return RegisterPage();
                }));
              }, child: Text('Register here',
              style: TextStyle(
                color: Colors.white,
              ),
              )))
          ],
        ),
      ),
    );
  }
}