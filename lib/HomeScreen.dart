import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();

  final _num = TextEditingController();
  final _email=TextEditingController();
  final _number=TextEditingController();
  final _password=TextEditingController();
  final _zipcode=TextEditingController();
  bool _validate = false;
  bool _isHidden = true;

  @override
  void dispose() {
    _num.dispose();
    _email.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: ListView(

          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: _num,
                keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                  icon: Icon(Icons.person,color: Colors.blueAccent,),
                  hintText: 'What do people call you?',
                  labelText: 'Name *',
                  errorText: _validate ? 'Value Can\'t Be Empty' : null,
                ),
              ),
            ),


            Container(
              padding: EdgeInsets.all(20),

              child: TextFormField(
                controller: _email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  icon: Icon(Icons.email,color: Colors.blueAccent,),
                  hintText: 'What do people call you?',
                  labelText: 'Email *',
                  errorText: _validate ? 'Please enter your email address' : null,
                ),
              ),
            ),


            Container(
              padding: EdgeInsets.all(20),

              child: TextFormField(
                controller: _number,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  icon: Icon(Icons.contact_mail,color: Colors.blueAccent,),
                  hintText: 'What do people call you?',
                  labelText: 'Number *',
                  errorText: _validate ? 'number should be getter than 5' : null
                  ,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),

              child: TextFormField(
                obscureText: _isHidden,
                controller: _password,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock,color: Colors.blueAccent,),
                  hintText: 'Password *',
                  suffix: InkWell(
                    onTap: _togglePasswordView,
                    child: Icon( Icons.visibility),
                  ),
                  errorText: _validate ? 'Number should be getter than 6' : null,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),

              child: TextFormField(
                controller: _zipcode,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  icon: Icon(Icons.insert_chart,color: Colors.blueAccent,),
                  hintText: 'What do people call you?',
                  labelText: 'Zip Code *',
                  errorText: _validate ? 'Value Can\'t Be Empty' : null,
                ),
              ),
            ),

            RaisedButton(
                onPressed: (){
                  setState(() {
                    _num.text.isEmpty ? _validate = true : _validate = false;
                    _email.text.isEmpty ? _validate = true : _validate = false;
                    _number.text.isEmpty && _password.text.length> 5 ? _validate = true : _validate = false;
                    _password.text.isEmpty ? _validate = true : _validate = false;
                    //_password.text.isEmpty && _password.text.length> 11 ? _validate = true : _validate = false;
                    _zipcode.text.isEmpty ? _validate = true : _validate = false;
                  });
                },
              child: Text('Submit'),
              textColor: Colors.white,
              color: Colors.blueAccent,

                ),

          ],

        ),

       
      ) ,

    );

  }


  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
