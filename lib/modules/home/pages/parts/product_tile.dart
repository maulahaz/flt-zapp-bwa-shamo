import 'package:flutter/material.dart';

import '../../../../configs/x_configs.dart';
import '../../../../helpers/x_helpers.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => ProductPage(product),
        //   ),
        // );
      },
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultMargin,
          right: kDefaultMargin,
          bottom: kDefaultMargin,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                // product.galleries[0].url,
                'https://picsum.photos/200',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "product.category.name",
                    style: getFont(12, color: kAppSecondText),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'product.name',
                    style: getFont(16, color: kAppPrimaryText),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\${product.price}',
                    style: getFont(14, color: kAppPrice),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
