import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/widgets/custom_animated_text_kit.dart';
import 'package:flutter_responsive_web/widgets/custom_app_bar.dart';
import 'package:flutter_responsive_web/widgets/custom_drawer.dart';
import 'package:flutter_responsive_web/widgets/dashboard_table.dart';
import 'package:flutter_responsive_web/widgets/home_screen_num_div.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final isResponsive = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    final ScrollController _scrollController = ScrollController();

    final List<GlobalKey> _sectionKeys = [
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
    ];

    return Scaffold(
      drawer: !isResponsive
          ? CustomDrawer(
              scrollController: _scrollController, sectionKeys: _sectionKeys)
          : null,
      appBar: CustomAppBar(
        scrollController: _scrollController,
        sectionKeys: _sectionKeys,
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/547114/pexels-photo-547114.jpeg?auto=compress&cs=tinysrgb&w=600'),
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
                                    backgroundImage: NetworkImage(
                                        'https://avatars.githubusercontent.com/u/57899051?v=4')),
                                title: Text('Welcome to TechSolNexa'),
                                subtitle: Text('Please Subscribe to Channel'),
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Expanded(
                                child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                hintText: 'Search',
                                prefixIcon: Icon(Icons.search_outlined),
                              ),
                            )),
                            SizedBox(width: 10.0),
                            SizedBox(
                              height: 48.0,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0))),
                                  backgroundColor:
                                      WidgetStateProperty.all(Colors.blue),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "+ Add Applicant",
                                  style: TextStyle(color: Colors.white),
                                ),
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
                              ElevatedButton(
                                style: ButtonStyle(
                                  shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0))),
                                  backgroundColor:
                                      WidgetStateProperty.all(Colors.blue),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Explore Now",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        DashboardTable()
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                key: _sectionKeys[0],
                height: 600,
                color: Colors.red,
                child: Center(child: Text('Home Section')),
              ),
              Container(
                key: _sectionKeys[1],
                height: 600,
                color: Colors.blue,
                child: Center(child: Text('About Section')),
              ),
              Container(
                key: _sectionKeys[2],
                height: 600,
                color: Colors.green,
                child: Center(child: Text('Contact Section')),
              ),
              Container(
                key: _sectionKeys[3],
                height: 600,
                color: Colors.purple,
                child: Center(child: Text('Privacy Section')),
              ),
              Container(
                key: _sectionKeys[4],
                height: 600,
                color: Colors.orange,
                child: Center(child: Text('Terms Section')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
