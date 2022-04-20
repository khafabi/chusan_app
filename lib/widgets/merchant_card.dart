import 'package:chusan_app/models/barrel_model.dart';
import 'package:chusan_app/theme.dart';
import 'package:flutter/material.dart';


class ProductCard extends StatelessWidget {
  final Merchant merchant;
  ProductCard(this.merchant, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => ProductPage(merchant),
        //   ),
        // );
      },
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffECEDEF),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.network(
              MockPhotoUrl,
              width: 215,
              height: 150,
              fit: BoxFit.cover,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    merchant.merch_name,
                    style: AppFonts.standard(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    merchant.business_tagline,
                    style: AppFonts.small(),
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
