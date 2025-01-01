import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/screens/main_sections/about_view_section.dart';
import 'package:flutter_responsive_web/screens/main_sections/home_view_section.dart';
import 'package:flutter_responsive_web/widgets/custom_app_bar.dart';
import 'package:flutter_responsive_web/widgets/custom_drawer.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final isResponsive = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    final ScrollController scrollController = ScrollController();

    final List<GlobalKey> sectionKeys = [
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
    ];

    return Scaffold(
      drawer: !isResponsive
          ? CustomDrawer(
              scrollController: scrollController, sectionKeys: sectionKeys)
          : null,
      appBar: CustomAppBar(
        scrollController: scrollController,
        sectionKeys: sectionKeys,
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              /// Home Section
              HomeViewSection(divKey: sectionKeys[0]),

              /// About Section
              AboutViewSection(divKey: sectionKeys[1]),

              /// Contact Section
              Container(
                key: sectionKeys[2],
                height: 600,
                color: Colors.green,
                child: Center(child: Text('Contact Section')),
              ),

              /// Privacy Section
              Container(
                key: sectionKeys[3],
                height: 600,
                color: Colors.purple,
                child: Center(child: Text('Privacy Section')),
              ),

              /// Terms Section
              Container(
                key: sectionKeys[4],
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
