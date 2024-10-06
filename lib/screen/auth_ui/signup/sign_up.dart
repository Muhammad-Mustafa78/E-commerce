// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rise124/widgets/Primary_button.dart/primary_button.dart';
import 'package:rise124/widgets/top_title/top_title.dart';

import '../../home/home.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signup();
}

class _signup extends State<signup> {
  bool isShowPassward = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackButton(
                color: Colors.black,
              ),
              const SizedBox(
                height: 14.0,
              ),
              TopTitle(
                  subtitle: "Welcome in Store", title: "Create an Account"),
              SizedBox(
                height: 46.0,
              ),
              TextFormField(
                  decoration: InputDecoration(
                      hintText: "Name",
                      prefixIcon: Icon(Icons.person_outline))),
              const SizedBox(
                height: 12.0,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: "Phone",
                    prefixIcon: Icon(Icons.phone_android_outlined)),
              ),
              SizedBox(
                height: 12.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "E-mail", prefixIcon: Icon(Icons.email_outlined)),
              ),
              TextFormField(
                obscureText: isShowPassward,
                decoration: InputDecoration(
                    hintText: "Passward",
                    prefixIcon: Icon(Icons.password_rounded),
                    suffixIcon: CupertinoButton(
                        onPressed: () {
                          setState(() {
                            isShowPassward = !isShowPassward;
                          });
                        },
                        padding: EdgeInsets.zero,
                        child: Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        ))),
              ),
              SizedBox(
                height: 38.0,
              ),
              PrimaryButton(
                title: 'Create an Account',
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              ),
              SizedBox(
                height: 24.0,
              ),
              Center(child: Text("I have Already an account?")),
              SizedBox(
                height: 12.0,
              ),
              Center(
                  child: CupertinoButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "SignUp",
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
