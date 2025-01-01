import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/constants/constants.dart';
import 'package:flutter_responsive_web/responsive_views/home_view_section.dart';
import 'package:flutter_responsive_web/widgets/custom_animated_text_kit.dart';
import 'package:flutter_responsive_web/widgets/dashboard_action_button.dart';
import 'package:flutter_responsive_web/widgets/dashboard_table.dart';
import 'package:flutter_responsive_web/widgets/dashboard_text_field.dart';
import 'package:flutter_responsive_web/widgets/home_screen_num_div.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeViewSection extends StatefulWidget {
  final Key? divKey;

  const HomeViewSection({super.key, required this.divKey});

  @override
  State<HomeViewSection> createState() => _HomeViewSectionState();
}

class _HomeViewSectionState extends State<HomeViewSection> {
  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context).largerThan(TABLET);
    return responsive
        ? Container(
            key: widget.divKey!,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    CachedNetworkImageProvider(AppConstants.homeScreenBgImage),
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
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            onTap: () {},
                            leading: CircleAvatar(
                                backgroundImage: CachedNetworkImageProvider(
                                    AppConstants.homeScreenMainTileImage)),
                            title: Text('Welcome to TechSolNexa'),
                            subtitle: Text('Please Subscribe to Channel'),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                            child: DashboardTextField(
                          hintText: 'Search',
                          prefixIcon: Icons.search_outlined,
                        )),
                        SizedBox(width: 10.0),
                        SizedBox(
                          height: 48.0,
                          child: DashboardActionButton(
                            title: '+ Add Applicant',
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(width: 10.0),
                      ],
                    ),
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
          )
        : HomeViewSectionMobile(divKey: widget.divKey);
  }
}
