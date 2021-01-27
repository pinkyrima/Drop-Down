import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {


  @override
  _ThirdScreenState createState() => _ThirdScreenState();


}


/*class Item {
  const Item(this.name,this.icon);
  final String name;
  final Icon icon;
}*/


class _ThirdScreenState extends State<ThirdScreen> {

  /*List users = [
    const Item('Bangladesh',Icon(Icons.android,color:  const Color(0xFF167F67),)),
    const Item('Australia',Icon(Icons.flag,color:  const Color(0xFF167F67),)),
    const Item('Maldived',Icon(Icons.format_indent_decrease,color:  const Color(0xFF167F67),)),
    const Item('Singapore',Icon(Icons.mobile_screen_share,color:  const Color(0xFF167F67),)),
  ];*/

  TextEditingController _emailController=TextEditingController();
  TextEditingController _nameController=TextEditingController();
  TextEditingController userpasswordController=TextEditingController();


  final _formKey = GlobalKey<FormState>();
  String _userEmail = '';
  String _userName = '';
  String _password = '';
   bool usernameValid=true;
  bool _isHidden = true;



  void _trySubmitForm() {
    final isValid = _formKey.currentState.validate();
    if (isValid) {
      print('Everything looks good!');
      print(_userEmail);
      print(_userName);
      print(_password);



    }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepOrange,
        alignment: Alignment.center,
        child: Center(
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 35),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      /////////////////////////////////////////
                      /// Eamil
                      ///
                    TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (val) {
                      setState(() {
                        usernameValid =
                            _emailController.text.isNotEmpty && validateEmail(val);
                      });
                    },
                    decoration: InputDecoration(
                      filled: false,
                      hintText: "example@mail.com",
                      contentPadding: const EdgeInsets.all(4),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      isDense: true,
                      prefixIcon: Icon(
                        Icons.email,
                        color: usernameValid
                            ? (_emailController.text.isNotEmpty
                            ? Colors.blueAccent
                            : Colors.deepOrange)
                            : Colors.red,
                      ),
                      suffixIcon: !usernameValid
                          ? Icon(
                        Icons.error_outline,
                        color: Colors.red,
                      )
                          : null,
                    ),
                  ),
                      /*TextFormField(
                        decoration: InputDecoration(labelText: 'Email'),
                        validator: (value) {
                          if (value.trim().isEmpty) {
                            return 'Please enter your email address';
                          }
                          // Check if the entered email has the right format
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          // Return null if the entered email is valid
                          return null;
                        },
                        onChanged: (value) => _userEmail = value,
                      ),*/

                      /////////////////////////////////////////
                      /// username
                      ///
                      TextFormField(
                        controller: _nameController,
                        keyboardType: TextInputType.text,
                        onChanged: (val) {
                          setState(() {
                            usernameValid =
                                _nameController.text.isNotEmpty && validateName(val);
                          });
                        },
                        decoration: InputDecoration(
                          filled: false,
                          hintText: "abc",
                          contentPadding: const EdgeInsets.all(4),
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          isDense: true,
                          prefixIcon: Icon(
                            Icons.person,
                            color: usernameValid
                                ? (_nameController.text.isNotEmpty
                                ? Colors.blueAccent
                                : Colors.deepOrange)
                                : Colors.red,
                          ),
                          suffixIcon: !usernameValid
                              ? Icon(
                            Icons.error_outline,
                            color: Colors.red,
                          )
                              : null,
                        ),
                      ),
                      /*TextFormField(
                        decoration: InputDecoration(labelText: 'Username'),
                        validator: (value) {
                          if (value.trim().isEmpty) {
                            return 'This field is required';
                          }
                          if (value.trim().length < 4) {
                            return 'Username must be at least 4 characters in length';
                          }
                          // Return null if the entered username is valid
                          return null;
                        },
                        onChanged: (value) => _userName = value,
                      ),*/

                      ////////////////////////////////////
                      /// Password
                      ///
                      TextFormField(
                        obscureText: _isHidden,

                        //cursorColor: themeProvider.cursorColor,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        controller: userpasswordController,
                        /*onFieldSubmitted: (val) {
                          FocusScope.of(context).requestFocus(passwordFocusNode);
                        },*/
                        onChanged: (val) {
                          setState(() {
                            usernameValid = userpasswordController.text.isNotEmpty && validateEmail(val);
                          });
                        },
                        decoration: InputDecoration(
                            filled: false,
                            hintText: "afhsjfdskjf",
                            contentPadding: const EdgeInsets.all(16),
                            //hintStyle: TextStyles.input(context, usernameValid ? themeProvider.hintColor : Colors.red),
                            border: OutlineInputBorder(borderSide: BorderSide.none),
                            isDense: true,
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.blueAccent,
                              /*color: usernameValid
                                ? (usernameController.text.isNotEmpty ? themeProvider.iconColor : themeProvider.hintColor)
                                : Colors.red,*/
                            ),
                           /* suffixIcon: Icon(
                              Icons.error_outline,
                              color: Colors.red,
                            )*/
                          suffix: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon( Icons.visibility),
                          ),


                        ),
                      ),
                      /*TextFormField(
                        decoration: InputDecoration(labelText: 'Password'),
                        obscureText: true,
                        validator: (value) {
                          if (value.trim().isEmpty) {
                            return 'This field is required';
                          }
                          if (value.trim().length < 8) {
                            return 'Password must be at least 8 characters in length';
                          }
                          // Return null if the entered password is valid
                          return null;
                        },
                        onChanged: (value) => _password = value,
                      ),*/
                      //////////////////////////////////
                      /// Confirm Password
                      /*TextFormField(
                        decoration:
                        InputDecoration(labelText: 'Confirm Password'),
                        obscureText: true,
                        validator: (value) {
                          if(value.isEmpty){
                            return 'This field is required';
                          }

                          if (value != _password) {
                            return 'Confimation password does not match the entered password';
                          }

                          return null;
                        },
                        onChanged: (value) => _confirmPassword = value,
                      ),*/
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.centerRight,
                          child: OutlinedButton(
                              onPressed: _trySubmitForm,
                              child: Text('Sign Up'))),
                      SizedBox(height: 20,),
                      /*ListView(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            margin: const EdgeInsets.only(top: 50),
                            child: Text('Country Drop Down Box',
                            style: TextStyle(color: Colors.red,
                                fontWeight: FontWeight.w500,
                                fontSize: 30)
                            ),),
                          DropdownButton(
                            items: users.map((Item user) {
                              return DropdownMenuItem(
                                value: user,
                                child: Row(
                                  children: [
                                    user.icon,
                                    SizedBox(width: 10,),
                                    Text(
                                      user.name,
                                      style:  TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                value;
                              });
                            },
                          ),
                        ],
                      )*/
                    ],
                  )),
            ),
          ),
        ),
      ),

    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }


  bool validateEmail(String val) => RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(val);

  bool validateName(String val) => RegExp(r"(\w+)")
      .hasMatch(val);
}
