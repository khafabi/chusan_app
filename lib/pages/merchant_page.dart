import 'package:carousel_slider/carousel_slider.dart';
import 'package:chusan_app/models/barrel_model.dart';
import 'package:chusan_app/theme.dart';
import 'package:flutter/material.dart';

class MerchantPage extends StatefulWidget {
  final Merchant merchant;
  const MerchantPage(this.merchant, {Key? key}) : super(key: key);

  @override
  _MerchantPageState createState() => _MerchantPageState();
}

class _MerchantPageState extends State<MerchantPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: const EdgeInsets.symmetric(
          horizontal: 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? ColorConst.primaryBrand : const Color(0xffC4C4C4),
        ),
      );
    }

    Widget familiarMerchantCard(String imageUrl) {
      return Container(
        width: 54,
        height: 54,
        margin: const EdgeInsets.only(
          right: 16,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
          borderRadius: BorderRadius.circular(6),
        ),
      );
    }

    Widget header() {
      int index = -1;
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.chevron_left,
                  ),
                ),
                const Icon(
                  Icons.shopping_bag,
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: widget.merchant.merch_gallery
                .map(
                  (image) => Image.network(
                    image,
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.merchant.merch_gallery.map((e) {
              index++;
              return indicator(index);
            }).toList(),
          ),
        ],
      );
    }

    Widget content() {
      int index = -1;

      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 17),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: ColorConst.primaryBrand,
        ),
        child: Column(
          children: [
            // NOTE: HEADER
            Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.merchant.merch_name,
                          style: AppFonts.standard(),
                        ),
                        Text(
                          widget.merchant.business_tagline,
                          style: AppFonts.small(),
                        ),
                      ],
                    ),
                  ),
                  ///Favorito
                  // GestureDetector(
                  //   onTap: () {
                  //   //   if (wishlistProvider.isWishlist(widget.merchant)) {
                  //   //     ScaffoldMessenger.of(context).showSnackBar(
                  //   //       SnackBar(
                  //   //         backgroundColor: secondaryColor,
                  //   //         content: const Text(
                  //   //           'Has been added to the Wishlist',
                  //   //           textAlign: TextAlign.center,
                  //   //         ),
                  //   //       ),
                  //   //     );
                  //   //   } else {
                  //   //     ScaffoldMessenger.of(context).showSnackBar(
                  //   //       SnackBar(
                  //   //         backgroundColor: alertColor,
                  //   //         content: const Text(
                  //   //           'Has been removed from the Wishlist',
                  //   //           textAlign: TextAlign.center,
                  //   //         ),
                  //   //       ),
                  //   //     );
                  //   //   }
                  //   },
                  //   child: Image.asset(
                  //     wishlistProvider.isWishlist(widget.merchant)
                  //         ? 'assets/button_wishlist_blue.png'
                  //         : 'assets/button_wishlist.png',
                  //     width: 46,
                  //   ),
                  // ),
                ],
              ),
            ),

            /// NOTE: PRICE
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 20,
                left: defaultMargin,
                right: defaultMargin,
              ),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price starts from 10k',
                    style: AppFonts.standard(),
                  ),
                  // Text(
                  //   '\$${widget.merchant.merch_menu}',
                  //   style: priceTextStyle.copyWith(
                  //     fontSize: 16,
                  //     fontWeight: semiBold,
                  //   ),
                  // ),
                ],
              ),
            ),

            /// NOTE: DESCRIPTION
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: AppFonts.standard(),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    widget.merchant.merch_description,
                    style: AppFonts.small(),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),

            /// NOTE: FAMILIAR SHOES
            // Container(
            //   width: double.infinity,
            //   margin: EdgeInsets.only(
            //     top: defaultMargin,
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Padding(
            //         padding: EdgeInsets.symmetric(
            //           horizontal: defaultMargin,
            //         ),
            //         child: Text(
            //           'Fimiliar Shoes',
            //           style: primaryTextStyle.copyWith(
            //             fontWeight: medium,
            //           ),
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 12,
            //       ),
            //       SingleChildScrollView(
            //         scrollDirection: Axis.horizontal,
            //         child: Row(
            //           children: familiarShoes.map((image) {
            //             index++;
            //             return Container(
            //               margin: EdgeInsets.only(
            //                   left: index == 0 ? defaultMargin : 0),
            //               child: familiarMerchantCard(image),
            //             );
            //           }).toList(),
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            // NOTE: BUTTONS
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(defaultMargin),
              child: Row(
                children: [
                  /// Chat function
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => DetailChatPage(widget.merchant),
                  //       ),
                  //     );
                  //   },
                  //   child: Container(
                  //     width: 54,
                  //     height: 54,
                  //     decoration: const BoxDecoration(
                  //       image: const DecorationImage(
                  //         image: AssetImage(
                  //           'assets/button_chat.png',
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(
                  //   width: 16,
                  // ),
                  ///Open Map
                  Expanded(
                    child: Container(
                      height: 54,
                      child: TextButton(
                        onPressed: () {
                          ///Url Launcher
                        },
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'Add to Cart',
                          style: AppFonts.standard(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
