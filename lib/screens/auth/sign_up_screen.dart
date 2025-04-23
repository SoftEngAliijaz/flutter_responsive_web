import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/screens/main/home_screen.dart';
import 'package:flutter_responsive_web/widgets/custom_button.dart';
import 'package:flutter_responsive_web/widgets/custom_text_field.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  Widget _buildSignUpForm(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const TextFieldSectionHeader(title: 'Sign Up', color: Colors.black87),
        const SizedBox(height: 20),
        const CustomTextField(
          maxLines: 1,
          hintText: 'Email',
          prefixIcon: Icons.mail_outline,
        ),
        const SizedBox(height: 20),
        const CustomTextField(
          maxLines: 1,
          hintText: 'Password',
          prefixIcon: Icons.lock_outline,
        ),
        const SizedBox(height: 20),
        const CustomTextField(
          maxLines: 1,
          hintText: 'Confirm Password',
          prefixIcon: Icons.lock_outline,
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 48,
          child: CustomButton(
            title: 'Sign Up',
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const HomeScreen()),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Already have an account?',
              style: TextStyle(color: Colors.black54),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Login',
                style: TextStyle(color: Color(0xFF5B86E5)),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLeftPanel(Size size) {
    return Expanded(
      child: Container(
        height: size.height,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF5B86E5), Color(0xFF36D1DC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Icon(Icons.person_outline,
                  size: 50, color: Color(0xFF5B86E5)),
            ),
            SizedBox(height: 20),
            Text(
              'Create Account',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Join us and explore exciting features.',
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRightPanel(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(child: _buildSignUpForm(context)),
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF5B86E5), Color(0xFF36D1DC)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: _buildSignUpForm(context),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: isDesktop
            ? Row(
                children: [
                  _buildLeftPanel(size),
                  _buildRightPanel(context),
                ],
              )
            : _buildMobileLayout(context),
      ),
    );
  }
}

class TextFieldSectionHeader extends StatelessWidget {
  const TextFieldSectionHeader({
    super.key,
    required this.title,
    this.color = Colors.black87,
  });

  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: color,
      ),
      textAlign: TextAlign.center,
    );
  }
}
