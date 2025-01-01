import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/constants/constants.dart';
import 'package:flutter_responsive_web/widgets/about_screen_num_div.dart';
import 'package:flutter_responsive_web/widgets/dashboard_action_button.dart';

class AboutScreenSectionMobileLayout extends StatelessWidget {
  final Key? divKey;

  const AboutScreenSectionMobileLayout({super.key, required this.divKey});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> numberDivData = [
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
    return Container(
      key: divKey,
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage:
                CachedNetworkImageProvider(AppConstants.homeScreenBgImage),
            radius: 40.0,
          ),
          SizedBox(height: 10.0),
          Text(
            'About TechSolNexa',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            'Innovating the Future',
            style: TextStyle(fontSize: 16.0, color: Colors.black54),
          ),
          SizedBox(height: 15.0),
          Text(
            'At TechSolNexa, we are committed to delivering cutting-edge technology solutions '
            'that empower businesses and transform lives. Our vision is to lead the industry '
            'with innovation, integrity, and customer-centric services.',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 15.0),

          /// now once check on physical device
          GridView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: numberDivData.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return AboutScreenNumDiv(
                  title: numberDivData[index]['title']!,
                  subtitle: numberDivData[index]['subtitle']!,
                  imageUrl: numberDivData[index]['imageUrl']!,
                );
              }),
          SizedBox(height: 15.0),
          DashboardActionButton(
            title: 'Contact Us',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
