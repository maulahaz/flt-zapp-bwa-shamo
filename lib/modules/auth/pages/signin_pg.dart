import 'package:flutter/material.dart';

import '../../../configs/x_configs.dart';
// import '../../home/x_homes.dart';
import '../../../helpers/x_helpers.dart';
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

  bool isLoading = false;

  Widget footer() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don\'t have an account? ',
            style: getFont(12, color: kAppPrimary.withOpacity(0.4)),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/signup');
            },
            child: Text(
              'Sign Up',
              style: getFont(12, color: kAppPrimary),
            ),
          ),
        ],
      ),
    );
  }

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
              SizedBox(height: 40),
              //--Button:,
              isLoading
                  ? MyButtons.isLoading(context, '...Loading')
                  : MyButtons.primary(context, 'Sign In', () {
                      print('--Clicked: Sign In');
                      Navigator.pushNamed(context, '/home');
                    }),
              Spacer(),
              //--Footer:,
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
