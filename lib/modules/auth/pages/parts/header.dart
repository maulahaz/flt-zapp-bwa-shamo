import 'package:flutter/material.dart';

import '../../../../configs/x_configs.dart';
import '../../../../helpers/x_helpers.dart';

Widget header() {
  return Container(
    margin: EdgeInsets.only(top: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Signin', style: getFont(24, isBold: true)),
        SizedBox(
          height: 2,
        ),
        Text(
          'Sign In to Continue',
          style: getFont(12, fontName: 'Poppin', color: kAppSubtitle),
        ),
      ],
    ),
  );
}
