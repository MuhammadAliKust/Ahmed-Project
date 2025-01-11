import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              label: Text("Email"),
              hintText: 'test@gmail.com',
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.email),
              filled: true,
              // enabled: false,
              fillColor: Colors.blue.withOpacity(0.5),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 3)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow, width: 3)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow, width: 3)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: pwdController,
            // obscureText: true,
            decoration: InputDecoration(
              label: Text("Password"),
              hintText: 'Password must be 6 or more characters',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.remove_red_eye),
              filled: true,
              // enabled: false,
              fillColor: Colors.blue.withOpacity(0.5),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 3)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow, width: 3)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow, width: 3)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Text("Forgot Password?")),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                if (emailController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Email cannot be empty.")));
                  return;
                }
                if (!emailController.text.isEmail) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Email is not valid.")));
                  return;
                }
                if (pwdController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Password cannot be empty.")));
                  return;
                }
                if (pwdController.text.length < 6) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Password must be 6 or more characters.")));
                  return;
                }
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
