import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/widgets/custom_button.dart';
import 'package:flutter_responsive_web/widgets/home_screen_num_div.dart';
import 'package:flutter_responsive_web/widgets/custom_animated_text_kit.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutViewSection extends StatefulWidget {
  const AboutViewSection({super.key, required this.divKey});

  final Key? divKey;

  @override
  State<AboutViewSection> createState() => _AboutViewSectionState();
}

class _AboutViewSectionState extends State<AboutViewSection> {
  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    return Container(
      key: widget.divKey,
      padding: responsive
          ? const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0)
          : const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blueAccent.shade100,
            Colors.blue.shade600,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title Section
          responsive
              ? Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.info, color: Colors.blueAccent),
                        ),
                        title: Text(
                          'About TechSolNexa',
                          style: TextStyle(
                            fontSize: responsive ? 24.0 : 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          'Innovating the Future',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    CustomButton(
                      title: 'Contact Us',
                      onPressed: () {},
                    ),
                  ],
                )
              : ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.info, color: Colors.blueAccent),
                  ),
                  title: Text(
                    'About TechSolNexa',
                    style: TextStyle(
                      fontSize: responsive ? 24.0 : 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'Innovating the Future',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
          const SizedBox(height: 20.0),

          // Mission & Vision Section
          Text(
            'Our Mission & Vision',
            style: TextStyle(
              fontSize: responsive ? 22.0 : 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            'At TechSolNexa, we are committed to delivering cutting-edge technology solutions '
            'that empower businesses and transform lives. Our vision is to lead the industry '
            'with innovation, integrity, and customer-centric services.',
            style: TextStyle(
              fontSize: responsive ? 16.0 : 14.0,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 20.0),

          // Horizontal Scrollable Section
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
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
          const SizedBox(height: 20.0),

          // Special Section
          Text(
            'What Makes Us Special?',
            style: TextStyle(
              fontSize: responsive ? 22.0 : 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10.0),
          CustomAnimatedTextKit(isHomePage: false),
          const SizedBox(height: 20.0),

          // Learn More Button
          responsive
              ? CustomButton(
                  title: 'Learn More About Us',
                  onPressed: () {},
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CustomButton(
                        title: 'Learn More',
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CustomButton(
                        title: 'Contact Us',
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
