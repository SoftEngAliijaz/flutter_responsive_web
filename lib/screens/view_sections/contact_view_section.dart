import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/widgets/custom_button.dart';
import 'package:flutter_responsive_web/widgets/custom_text_field.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ContactViewSection extends StatelessWidget {
  const ContactViewSection({
    super.key,
    required this.divKey,
  });

  final Key? divKey;

  Widget _buildContactForm(bool isResponsive) {
    return Container(
      width: isResponsive ? 500 : double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            hintText: 'Your Name',
            prefixIcon: Icons.person_outline,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hintText: 'Your Email',
            prefixIcon: Icons.email_outlined,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hintText: 'Your Message',
            prefixIcon: Icons.message_outlined,
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: CustomButton(
              title: 'Send Message',
              onPressed: () {
                // Placeholder action - implement form submission logic
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactInfo(bool isResponsive) {
    return Container(
      width: isResponsive ? 300 : double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'You can also reach us at:',
            style:
                TextStyle(fontSize: isResponsive ? 20 : 18, color: Colors.teal),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              // Placeholder for email action
            },
            child: Text(
              'Email: contact@example.com',
              style: TextStyle(
                  fontSize: isResponsive ? 16 : 14,
                  color: Colors.blue,
                  decoration: TextDecoration.underline),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              // Placeholder for phone action
            },
            child: Text(
              'Phone: +123 456 7890',
              style: TextStyle(
                  fontSize: isResponsive ? 16 : 14,
                  color: Colors.blue,
                  decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isResponsive = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    return Container(
      key: divKey,
      padding: EdgeInsets.symmetric(
          vertical: 50, horizontal: isResponsive ? 40 : 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade300,
            Colors.blue.shade600,
            Colors.blue.shade800,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Get In Touch',
            style: TextStyle(
              fontSize: isResponsive ? 40 : 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            'We would love to hear from you! Feel free to reach out using the form below.',
            style: TextStyle(
                fontSize: isResponsive ? 20 : 18, color: Colors.white70),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          isResponsive
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: _buildContactForm(isResponsive)),
                    const SizedBox(width: 40),
                    Expanded(child: _buildContactInfo(isResponsive)),
                  ],
                )
              : Column(
                  children: [
                    _buildContactForm(isResponsive),
                    const SizedBox(height: 30),
                    _buildContactInfo(isResponsive),
                  ],
                ),
        ],
      ),
    );
  }
}
