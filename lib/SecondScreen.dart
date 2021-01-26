/*
import 'package:flutter/material.dart';
class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  final FocusNode = usernameFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    var usernameController;
    var usernameValid;
    var usernameFocusNode;
    var passwordFocusNode;
    var themeProvider;

    return Scaffold(
      body: Center(

        child: ListView(
          children: [

            TextFormField(
              style: TextStyles.input(context, usernameValid ? themeProvider.textColor : Colors.red),
              cursorColor: themeProvider.cursorColor,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              controller: usernameController,
              focusNode: usernameFocusNode,
              onFieldSubmitted: (val) {
                FocusScope.of(context).requestFocus(passwordFocusNode);
              },
              onChanged: (val) {
                setState(() {
                  usernameValid = usernameController.text.isNotEmpty && validateEmail(val);
                });
              },
              decoration: InputDecoration(
                filled: false,
                hintText: "example@mail.com",
                contentPadding: const EdgeInsets.all(16),
                hintStyle: TextStyles.input(context, usernameValid ? themeProvider.hintColor : Colors.red),
                border: OutlineInputBorder(borderSide: BorderSide.none),
                isDense: true,
                prefixIcon: Icon(
                  MdiIcons.emailOutline,
                  color: usernameValid
                      ? (usernameController.text.isNotEmpty ? themeProvider.iconColor : themeProvider.hintColor)
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

          ],
        ),

      ),
    );
  }
}
*/
