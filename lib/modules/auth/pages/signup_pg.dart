import 'package:flutter/material.dart';
// import 'package:flutter_app/extensions/x_extensions.dart';

import '../../../configs/x_configs.dart';
// import '../../../widgets/x_widgets.dart';
// import '../../home/x_homes.dart';
import '../../../helpers/x_helpers.dart';
import '../../../widgets/x_widgets.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _nameController = TextEditingController(text: '');

  TextEditingController _phoneController = TextEditingController(text: '');

  TextEditingController _emailController = TextEditingController(text: '');

  TextEditingController _passwordController = TextEditingController(text: '');

  bool isLoading = false;

  Widget footer() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have an account? ',
            style: getFont(12, color: kAppPrimary.withOpacity(0.4)),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/signin');
            },
            child: Text(
              'Sign In',
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
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: kDefaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Signup',
                        style:
                            getFont(24, isBold: true, color: kAppPrimaryText)),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Register and Happy Shoping',
                      style: getFont(14, color: kAppSubtitle),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                //--Input:
                IconTextField(
                  controller: _nameController,
                  hintText: 'Name',
                  label: 'Name',
                  icon: Icons.person,
                  isObscure: false,
                ),
                SizedBox(height: 20),
                IconTextField(
                  controller: _phoneController,
                  hintText: 'Phone',
                  label: 'Phone',
                  icon: Icons.phone,
                  isObscure: false,
                ),
                SizedBox(height: 20),
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
                    : MyButtons.primary(context, 'Sign Up', () {
                        print('--Clicked: Sign In');
                      }),
                // : SizedBox(),
                //--Footer:,
                SizedBox(height: 40),
                footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
