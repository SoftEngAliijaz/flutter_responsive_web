import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/widgets/custom_app_bar.dart';
import 'package:flutter_responsive_web/widgets/custom_drawer.dart';
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
