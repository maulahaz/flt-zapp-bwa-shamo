import 'package:flutter/material.dart';

import '../../../../configs/x_configs.dart';
import '../../../../helpers/x_helpers.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

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
        width: 215,
        height: 278,
        margin: EdgeInsets.only(
          right: kDefaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffECEDEF),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Image.network(
              // product.galleries[0].url,
              'https://picsum.photos/200',
              width: 215,
              height: 150,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'product.category.name',
                    style: getFont(12, color: kAppSecondText),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'product.name',
                    style: getFont(18, color: kBlack),
                    overflow: TextOverflow.ellipsis,
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
