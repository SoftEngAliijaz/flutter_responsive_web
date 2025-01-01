import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/constants/constants.dart';
import 'package:flutter_responsive_web/widgets/custom_animated_text_kit.dart';
import 'package:flutter_responsive_web/widgets/dashboard_action_button.dart';
import 'package:flutter_responsive_web/widgets/dashboard_table.dart';
import 'package:flutter_responsive_web/widgets/dashboard_text_field.dart';
import 'package:flutter_responsive_web/widgets/home_screen_num_div.dart';

class HomeViewSectionMobile extends StatefulWidget {
  final Key? divKey;

  const HomeViewSectionMobile({
    super.key,
    required this.divKey,
  });

  @override
  State<HomeViewSectionMobile> createState() => _HomeViewSectionMobileState();
}

class _HomeViewSectionMobileState extends State<HomeViewSectionMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.divKey,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: CachedNetworkImageProvider(AppConstants.homeScreenBgImage),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                onTap: () {},
                leading: CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(
                        AppConstants.homeScreenMainTileImage)),
                title: Text('Welcome to TechSolNexa'),
                subtitle: Text('Please Subscribe to Channel'),
              ),
              SizedBox(height: 10.0),
              DashboardTextField(
                  hintText: 'Search', prefixIcon: Icons.search_outlined),
              SizedBox(height: 15.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HomeScreenNumberDiv(
                      title: 'Applicants',
                      subtitle: '1000',
                    ),
                    HomeScreenNumberDiv(
                      title: 'Projects',
                      subtitle: '42',
                    ),
                    HomeScreenNumberDiv(
                      title: 'Tasks Completed',
                      subtitle: '1250',
                    ),
                    HomeScreenNumberDiv(
                      title: 'Revenue',
                      subtitle: '\$75K',
                    ),
                    HomeScreenNumberDiv(
                      title: 'Feedback',
                      subtitle: '320',
                    ),
                    HomeScreenNumberDiv(
                      title: 'Bugs Fixed',
                      subtitle: '450',
                    ),
                    HomeScreenNumberDiv(
                      title: 'New Signups',
                      subtitle: '300',
                    ),
                    HomeScreenNumberDiv(
                      title: 'Pending Requests',
                      subtitle: '25',
                    ),
                    HomeScreenNumberDiv(
                      title: 'Messages',
                      subtitle: '120',
                    ),
                    HomeScreenNumberDiv(
                      title: 'Notifications',
                      subtitle: '15',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'What Services we provide?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    CustomAnimatedTextKit(),
                    SizedBox(height: 15.0),
                    DashboardActionButton(
                      title: 'Explore More',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              DashboardTable()
            ],
          ),
        ),
      ),
    );
  }
}
