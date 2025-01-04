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

            // Metrics Section
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  HomeScreenNumberDiv(title: 'Applicants', subtitle: '1000'),
                  HomeScreenNumberDiv(title: 'Projects', subtitle: '42'),
                  HomeScreenNumberDiv(
                      title: 'Tasks Completed', subtitle: '1250'),
                  HomeScreenNumberDiv(title: 'Revenue', subtitle: '\$75K'),
                  HomeScreenNumberDiv(title: 'Feedback', subtitle: '320'),
                  HomeScreenNumberDiv(title: 'Bugs Fixed', subtitle: '450'),
                  HomeScreenNumberDiv(title: 'New Signups', subtitle: '300'),
                  HomeScreenNumberDiv(
                      title: 'Pending Requests', subtitle: '25'),
                  HomeScreenNumberDiv(title: 'Messages', subtitle: '120'),
                  HomeScreenNumberDiv(title: 'Notifications', subtitle: '15'),
                ],
              ),
            ),
            const SizedBox(height: 20.0),

            // Services Section
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
