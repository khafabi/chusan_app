import 'package:chusan_app/models/barrel_model.dart';
import 'package:chusan_app/theme.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final Merchant merchant;
  const ProductTile(this.merchant, {Key? key}) : super(key: key);

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
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                // product.galleries[0].url,
                MockPhotoUrl,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    merchant.merch_name,
                    style: AppFonts.standard(),
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    merchant.business_tagline,
                    style: AppFonts.verySmall(),
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
