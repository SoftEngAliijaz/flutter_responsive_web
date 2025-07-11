import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_responsive_web/widgets/custom_animated_text_kit.dart';
import 'package:flutter_responsive_web/widgets/custom_button.dart';
import 'package:flutter_responsive_web/widgets/dashboard_table.dart';
import 'package:flutter_responsive_web/widgets/custom_text_field.dart';
import 'package:flutter_responsive_web/widgets/home_screen_num_div.dart';

class HomeViewSection extends StatefulWidget {
  final Key? divKey;

  const HomeViewSection({super.key, required this.divKey});

  @override
  State<HomeViewSection> createState() => _HomeViewSectionState();
}

class _HomeViewSectionState extends State<HomeViewSection> {
  // Sample data for metrics (could be dynamic based on your app's state)
  final List<Map<String, String>> metrics = [
    {'title': 'Applicants', 'subtitle': '1000'},
    {'title': 'Projects', 'subtitle': '42'},
    {'title': 'Tasks Completed', 'subtitle': '1250'},
    {'title': 'Revenue', 'subtitle': '\$75K'},
    {'title': 'Feedback', 'subtitle': '320'},
    {'title': 'Bugs Fixed', 'subtitle': '450'},
    {'title': 'New Signups', 'subtitle': '300'},
    {'title': 'Pending Requests', 'subtitle': '25'},
    {'title': 'Messages', 'subtitle': '120'},
    {'title': 'Notifications', 'subtitle': '15'},
  ];

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    return Container(
      key: widget.divKey,
      color: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue.shade100,
                      child: Icon(Icons.person, color: Colors.blue.shade700),
                    ),
                    title: Text(
                      'Welcome to TechSolNexa',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Please Subscribe to Channel'),
                  ),
                ),
                if (isDesktop) ...[
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: CustomTextField(
                      hintText: 'Search',
                      prefixIcon: Icons.search_outlined,
                      maxLines: 1,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  SizedBox(
                    height: 48.0,
                    child: CustomButton(
                      title: '+ Add Applicant',
                      onPressed: () {},
                    ),
                  ),
                ],
              ],
            ),
            if (!isDesktop) ...[
              const SizedBox(height: 10.0),
              CustomTextField(
                hintText: 'Search',
                prefixIcon: Icons.search_outlined,
                maxLines: 1,
              ),
            ],
            const SizedBox(height: 20.0),

            // Metrics Section (Dynamic Rendering)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: metrics
                    .map((metric) => HomeScreenNumberDiv(
                          title: metric['title']!,
                          subtitle: metric['subtitle']!,
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(height: 20.0),

            // Services Section (Dynamic List)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'What Services we provide?',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const CustomAnimatedTextKit(isHomePage: true),
                  const SizedBox(height: 15.0),
                  CustomButton(
                    title: 'Explore More',
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            // Table Section
            const SizedBox(height: 20.0),
            const DashboardTable(),
          ],
        ),
      ),
    );
  }
}
