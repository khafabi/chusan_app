import 'package:chusan_app/models/barrel_model.dart';
import 'package:chusan_app/theme.dart';
import 'package:flutter/material.dart';

class WishlistCard extends StatelessWidget {
  final Merchant merchant;
  WishlistCard(this.merchant);

  @override
  Widget build(BuildContext context) {
    // WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);

    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        // color: backgroundColor4,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              // merchant.merch_gallery[0] ??
                  MockPhotoUrl,
              width: 60,
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
                  merchant.merch_name,
                  style: AppFonts.standard(),
                ),
                Text(
                  '\$${merchant.business_tagline}',
                  style: AppFonts.small(),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              // wishlistProvider.setProduct(merchant);
            },
            child: Image.asset(
              'assets/button_wishlist_blue.png',
              width: 34,
            ),
          ),
        ],
      ),
    );
  }
}
