import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/widgets/custom_button.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PrivacyViewSection extends StatefulWidget {
  const PrivacyViewSection({super.key, required this.divKey});

  final Key? divKey;

  @override
  State<PrivacyViewSection> createState() => _PrivacyViewSectionState();
}

class _PrivacyViewSectionState extends State<PrivacyViewSection> {
  Widget _buildPrivacyItem(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.blueGrey, size: 24),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    return Container(
      key: widget.divKey,
      padding: responsive
          ? const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0)
          : const EdgeInsets.all(15.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon and Title Section
          Row(
            children: [
              Icon(Icons.privacy_tip, color: Colors.blueGrey, size: 30.0),
              SizedBox(width: 10),
              Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: responsive ? 28.0 : 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),

          // Content Section
          Text(
            'We value your privacy and strive to protect your personal information. '
            'This Privacy Policy outlines how we collect, use, and secure your data. '
            'Your trust is important to us.',
            style: TextStyle(
              fontSize: responsive ? 18.0 : 16.0,
              color: Colors.black54,
              height: 1.5,
            ),
          ),
          SizedBox(height: 20.0),

          // List of Features
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildPrivacyItem('Secure Data Storage', Icons.lock),
              _buildPrivacyItem('Transparency in Data Usage', Icons.visibility),
              _buildPrivacyItem('GDPR Compliance', Icons.check_circle),
            ],
          ),
          SizedBox(height: 30.0),

          // Learn More Button
          Center(
            child: CustomButton(
              title: 'Learn More',
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Detailed Privacy Policy"),
                      content: Text(
                          "Here are more details about our privacy policy..."),
                      actions: <Widget>[
                        TextButton(
                          child: Text("Close"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
