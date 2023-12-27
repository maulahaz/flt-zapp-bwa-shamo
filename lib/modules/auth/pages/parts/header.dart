import 'package:flutter/material.dart';

import '../../../../configs/x_configs.dart';
import '../../../../helpers/x_helpers.dart';

Widget header() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Signin',
          style: getFont(24, isBold: true, color: kAppPrimaryText)),
      SizedBox(
        height: 20,
      ),
      Text(
        'Sign In to Continue',
        style: getFont(14, color: kAppSubtitle),
      ),
    ],
  );
}
