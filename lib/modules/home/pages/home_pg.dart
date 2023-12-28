import 'package:flutter/material.dart';

import '../../../configs/x_configs.dart';
import '../../../helpers/x_helpers.dart';
import '../x_homes.dart';
import 'parts/product_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // AuthProvider authProvider = Provider.of<AuthProvider>(context);
    // UserModel user = authProvider.user;
    // ProductProvider productProvider = Provider.of<ProductProvider>(context);

    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: kDefaultMargin,
          left: kDefaultMargin,
          right: kDefaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, {user.name}',
                    style: getFont(24, color: kAppPrimaryText),
                  ),
                  Text(
                    '@{user.username}',
                    style: getFont(16, color: kAppSubtitle),
                  ),
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://picsum.photos/200', //user.profilePhotoUrl,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: kDefaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: kDefaultMargin,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: kAppPrimary,
                ),
                child: Text(
                  'All Shoes',
                  style: getFont(13, color: kAppPrimaryText),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: kAppSubtitle,
                  ),
                  color: kTransparent,
                ),
                child: Text(
                  'Running',
                  style: getFont(13, color: kAppSubtitle),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: kAppSubtitle,
                  ),
                  color: kTransparent,
                ),
                child: Text(
                  'Training',
                  style: getFont(13, color: kAppSubtitle),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: kAppSubtitle,
                  ),
                  color: kTransparent,
                ),
                child: Text(
                  'Basketball',
                  style: getFont(13, color: kAppSubtitle),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: kAppSubtitle,
                  ),
                  color: kTransparent,
                ),
                child: Text(
                  'Hiking',
                  style: getFont(13, color: kAppSubtitle),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget popularProductsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: kDefaultMargin,
          left: kDefaultMargin,
          right: kDefaultMargin,
        ),
        child: Text(
          'Popular Products',
          style: getFont(22, color: kAppPrimaryText),
        ),
      );
    }

    Widget popularProducts() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: kDefaultMargin,
              ),
              Row(
                children: [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              ),

              // Row(
              //   children: productProvider.products
              //       .map(
              //         (product) => ProductCard(product),
              //       )
              //       .toList(),
              // ),
            ],
          ),
        ),
      );
    }

    Widget newArrivalsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: kDefaultMargin,
          left: kDefaultMargin,
          right: kDefaultMargin,
        ),
        child: Text(
          'New Arrivals',
          style: getFont(22, color: kAppPrimaryText),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: EdgeInsets.only(
          top: 14,
        ),
        child: Column(
          children: [
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
        // child: Column(
        //   children: productProvider.products
        //       .map(
        //         (product) => ProductTile(product),
        //       )
        //       .toList(),
        // ),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        popularProductsTitle(),
        popularProducts(),
        newArrivalsTitle(),
        newArrivals(),
      ],
    );
  }
}
