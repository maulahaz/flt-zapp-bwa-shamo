import 'package:flutter/material.dart';

import '../configs/x_configs.dart';
import '../helpers/x_helpers.dart';

class IconTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String label, hintText;
  final bool isObscure;
  final IconData icon;
  const IconTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.label,
    required this.isObscure,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: getFont(16),
          ),
          SizedBox(height: 12),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: kAppBg2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: [
                  Icon(
                    icon,
                    size: 17,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: getFont(14, fontName: 'Poppin'),
                      controller: controller,
                      decoration: InputDecoration.collapsed(
                        hintText: hintText,
                        hintStyle: getFont(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
