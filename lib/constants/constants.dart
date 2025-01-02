import 'package:flutter/material.dart';

class AppConstants {
  static const String homeScreenBgImage =
      'https://images.pexels.com/photos/547114/pexels-photo-547114.jpeg?auto=compress&cs=tinysrgb&w=600';
  static const String homeScreenMainTileImage =
      'https://avatars.githubusercontent.com/u/57899051?v=4';

  static final List<Map<String, String>> aboutScreenNumberDivData = [
    {
      "title": "Years of Innovation",
      "subtitle": "10+",
      "imageUrl": AppConstants.homeScreenBgImage,
    },
    {
      "title": "Projects Delivered",
      "subtitle": "500+",
      "imageUrl": AppConstants.homeScreenBgImage,
    },
    {
      "title": "Happy Clients",
      "subtitle": "1,200+",
      "imageUrl": AppConstants.homeScreenBgImage,
    },
    {
      "title": "Awards Won",
      "subtitle": "15",
      "imageUrl": AppConstants.homeScreenBgImage,
    },
  ];

  static final List<String> navBarItems = [
    'Home',
    'About',
    'Contact',
    'Privacy',
    'Terms',
  ];

  static final List<IconData> navBarItemsIcon = [
    Icons.home_outlined,
    Icons.info_outline,
    Icons.contact_page_outlined,
    Icons.privacy_tip_outlined,
    Icons.contact_support_outlined,
  ];
}
