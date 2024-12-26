import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
            obscureText: true,
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
          ElevatedButton(onPressed: () {}, child: Text("Login"))
        ],
      ),
    );
  }
}
