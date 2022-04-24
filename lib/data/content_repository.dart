import 'package:chusan_app/models/barrel_model.dart';

class ContentRepository {
  List<Merchant> merchants = [];

  List<Merchant>? load() {
    final contentData = [
      {
        "merch_capacity": "25",
        "address_link":
            "https://www.google.com/maps/place/Markas+Besar+Suhat/@-7.9351395,112.615918,17z/data=!3m1!4b1!4m5!3m4!1s0x2e7883b9a7f2841b:0x29b40422b62b7acf!8m2!3d-7.9351329!4d112.6180946",
        "business_tagline": "Cari Cafe? Cek Chusan.id",
        "close_day": "Senin",
        "close_hour": "11:00 am",
        "contact_number": "088211853597",
        "merch_description":
            "Platform untuk menemukan pengalaman dan kenangan baru dengan cafe disekitarmu",
        "merch_facilities": ["WIFI", "WORKSPACE", "INDOOR", "OUTDOOR"],
        "merch_gallery": [
          "https://img.freepik.com/free-photo/interior-shot-cafe-with-chairs-near-bar-with-wooden-tables_181624-1669.jpg?t=st=1650781857~exp=1650782457~hmac=e63e18b68f661b5b58d6f8652a57e4b0513a08d1ae5ffb513d8eef63768e9659&w=740",
          "https://img.freepik.com/free-photo/wooden-wall-restaurant-cafe-contemporary-interior-design-natural-daylight_34048-584.jpg?w=740",
          "https://img.freepik.com/free-photo/cafe-bar-hotel-loft-style_1150-10724.jpg?t=st=1650781857~exp=1650782457~hmac=bd78ea9e61f588809f15041e27eb964eca6455de556536137409bdacf6b1ef43&w=740"
        ],
        "merch_name": "Cafe Chusan.id",
        "merch_payments": ["QRIS", "DEBIT"],
        "merch_photo":
            "https://img.freepik.com/free-vector/flat-design-cafe-signage-template_23-2149308998.jpg?t=st=1650781857~exp=1650782457~hmac=246f23af582bb8ab47fb5866fb28303da4db90827f71507678316b7732963439&w=740",
        "merch_reaches": ["WEB", "WHATSAPP", "FACEBOOK", "INSTAGRAM"],
        "open_day": "Selasa",
        "open_hour": "10:00 am",
        "merch_menu": [
          {
            "name": "Menu Pertama",
            "description": "Paket simpel untuk rame-rame",
            "price": "25000",
          },
          {
            "name": "Menu Kedua",
            "description": "Paket simpel untuk berdua bersama ayang",
            "price": "25000",
          },
        ],
        "merch_owner": {
          "id": "1",
          "name": "chusan",
          "email": "email",
        },
      }
    ];

    final list = <Merchant>[];

    for (var element in contentData) {
      list.add(
        Merchant.fromJson(element),
      );
    }

    return list;
  }
}
