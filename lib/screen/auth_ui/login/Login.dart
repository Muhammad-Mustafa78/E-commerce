// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rise124/widgets/Primary_button.dart/primary_button.dart';
import 'package:rise124/widgets/top_title/top_title.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isShowPassward = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackButton(
              color: Colors.black,
            ),
            const SizedBox(
              height: 14.0,
            ),
            const TopTitle(
                subtitle: "Welcome Back to E-Commerce App", title: "Login"),
            const SizedBox(
              height: 46.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "E-mail", prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextFormField(
              obscureText: isShowPassward,
              decoration: InputDecoration(
                  hintText: "Passward",
                  prefixIcon: const Icon(Icons.password_rounded),
                  suffixIcon: CupertinoButton(
                      onPressed: () {
                        setState(() {
                          isShowPassward = !isShowPassward;
                        });
                      },
                      padding: EdgeInsets.zero,
                      child: const Icon(
                        Icons.visibility,
                        color: Colors.grey,
                      ))),
            ),
            const SizedBox(
              height: 38.0,
            ),
            PrimaryButton(
              title: 'Login',
              onpressed: () {},
            ),
            const SizedBox(
              height: 24.0,
            ),
            const Center(child: Text("Don't Have any Account?")),
            const SizedBox(
              height: 12.0,
            ),
            Center(
                child: CupertinoButton(
                    onPressed: () {},
                    child: const Text(
                      "Create an Account",
                    )))
          ],
        ),
      ),
    );
  }
}
