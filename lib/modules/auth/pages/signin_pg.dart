import 'package:flutter/material.dart';
// import 'package:flutter_app/extensions/x_extensions.dart';

import '../../../configs/x_configs.dart';
// import '../../../widgets/x_widgets.dart';
// import '../../home/x_homes.dart';
import '../../../widgets/x_widgets.dart';
import '../x_auths.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBg1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: kDefaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              header(),
              SizedBox(height: 40),
              //--Input:
              IconTextField(
                controller: _emailController,
                hintText: 'Email',
                label: 'Email',
                icon: Icons.email,
                isObscure: false,
              ),
              SizedBox(height: 20),
              IconTextField(
                controller: _passwordController,
                hintText: 'Password',
                label: 'Password',
                icon: Icons.key,
                isObscure: true,
              ),
              //--Button:,

              //--Footer:,

              // passwordInput(),
              // isLoading ? LoadingButton() : signInButton(),
              // Spacer(),
              // footer(),
            ],
          ),
        ),
      ),
    );
  }
}
