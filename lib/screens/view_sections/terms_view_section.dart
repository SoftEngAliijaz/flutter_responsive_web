import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/widgets/custom_button.dart';
import 'package:responsive_framework/responsive_framework.dart';

class TermsViewSection extends StatefulWidget {
  const TermsViewSection({super.key, required this.divKey});

  final Key? divKey;

  @override
  State<TermsViewSection> createState() => _TermsViewSectionState();
}

class _TermsViewSectionState extends State<TermsViewSection> {
  Widget _buildTermsItem(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 24),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
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
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange.shade200, Colors.orange.shade800],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
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
          Row(
            children: [
              Icon(Icons.article, color: Colors.white, size: 30.0),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Terms and Conditions',
                  style: TextStyle(
                    fontSize: responsive ? 28.0 : 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),

          // Content Section
          Text(
            'By using our services, you agree to the following terms and conditions. '
            'Please read them carefully to understand your rights and obligations.',
            style: TextStyle(
              fontSize: responsive ? 18.0 : 16.0,
              color: Colors.white70,
              height: 1.5,
            ),
          ),
          SizedBox(height: 20.0),

          // List of Key Points
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTermsItem('Fair Use Policy', Icons.gavel),
              _buildTermsItem('No Unauthorized Access', Icons.security),
              _buildTermsItem('Legal Accountability', Icons.balance),
            ],
          ),
          SizedBox(height: 30.0),

          // Read Full Terms Button
          Center(
            child: CustomButton(
              title: 'Read Full Terms',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
