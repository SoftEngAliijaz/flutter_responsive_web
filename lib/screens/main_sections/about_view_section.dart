import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/constants/constants.dart';
import 'package:flutter_responsive_web/widgets/about_screen_num_div.dart';
import 'package:flutter_responsive_web/widgets/custom_animated_text_kit.dart';
import 'package:flutter_responsive_web/widgets/dashboard_action_button.dart';
import 'package:flutter_responsive_web/widgets/home_screen_num_div.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutViewSection extends StatefulWidget {
  final Key? divKey;

  const AboutViewSection({super.key, required this.divKey});

  @override
  State<AboutViewSection> createState() => _AboutViewSectionState();
}

class _AboutViewSectionState extends State<AboutViewSection> {
  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    return responsive
        ? Container(
            key: widget.divKey,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    CachedNetworkImageProvider(AppConstants.homeScreenBgImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: CachedNetworkImageProvider(
                                AppConstants.homeScreenMainTileImage),
                          ),
                          title: Text(
                            'About TechSolNexa',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text('Innovating the Future'),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      SizedBox(
                        height: 48.0,
                        child: DashboardActionButton(
                          title: 'Contact Us',
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Our Mission & Vision',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'At TechSolNexa, we are committed to delivering cutting-edge '
                    'technology solutions that empower businesses and transform lives. '
                    'Our vision is to lead the industry with innovation, integrity, '
                    'and customer-centric services.',
                    style: TextStyle(fontSize: 16.0, color: Colors.black54),
                  ),
                  SizedBox(height: 20.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        HomeScreenNumberDiv(
                          title: 'Years of Innovation',
                          subtitle: '10+',
                        ),
                        HomeScreenNumberDiv(
                          title: 'Projects Delivered',
                          subtitle: '500+',
                        ),
                        HomeScreenNumberDiv(
                          title: 'Happy Clients',
                          subtitle: '1,200+',
                        ),
                        HomeScreenNumberDiv(
                          title: 'Awards Won',
                          subtitle: '15',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  // Animated Highlights
                  Text(
                    'What Makes Us Special?',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  CustomAnimatedTextKit(),
                  SizedBox(height: 20.0),
                  // Call to Action
                  DashboardActionButton(
                    title: 'Learn More About Us',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          )

        ///Mobile View
        : Container(
            key: widget.divKey,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                      AppConstants.homeScreenBgImage),
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
                GridView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: AppConstants.aboutScreenNumberDivData.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      final value =
                          AppConstants.aboutScreenNumberDivData[index];
                      return AboutScreenNumDiv(
                        title: value['title']!,
                        subtitle: value['subtitle']!,
                        imageUrl: value['imageUrl']!,
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
