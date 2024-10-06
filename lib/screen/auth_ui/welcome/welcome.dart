import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rise124/contants/Assets_images.dart';
import 'package:rise124/screen/auth_ui/signup/sign_up.dart';
import 'package:rise124/widgets/Primary_button.dart/primary_button.dart';

import '../../../widgets/top_title/top_title.dart';
import '../login/Login.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopTitle(
                subtitle: "Buy AnyItem From Using App",
                title: 'Welcome',
              ),
              Center(
                  child: Image.asset(
                "../Assets/images/pic_1.png",
              )),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  child: Icon(
                    Icons.facebook,
                    size: 35,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                CupertinoButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    child:
                        Image.asset("../Assets/images/icon_1.png", scale: 30.0))
              ]),
              SizedBox(
                height: 18.0,
              ),
              PrimaryButton(
                  title: "login",
                  onpressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  }),
              SizedBox(
                height: 18.0,
              ),
              PrimaryButton(
                  title: "SignUp",
                  onpressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => signup()),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
