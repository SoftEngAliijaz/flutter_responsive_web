import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/screens/main/home_screen.dart';
import 'package:flutter_responsive_web/widgets/custom_button.dart';
import 'package:flutter_responsive_web/widgets/custom_text_field.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isResponsive = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: isResponsive
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

  Widget _buildLeftPanel(Size size) {
    return Expanded(
      child: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF5B86E5), Color(0xFF36D1DC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Icon(Icons.person_outline,
                  size: 50, color: Color(0xFF5B86E5)),
            ),
            const SizedBox(height: 20),
            const Text(
              'Create Account',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Join us and explore exciting features.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildRightPanel(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              hintText: 'Email',
              prefixIcon: Icons.mail_outline,
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              hintText: 'Password',
              prefixIcon: Icons.lock_outline,
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              hintText: 'Confirm Password',
              prefixIcon: Icons.lock_outline,
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 48.0,
              width: double.infinity,
              child: CustomButton(
                title: 'Sign Up',
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomeScreen()));
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
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Login',
                      style: TextStyle(color: Color(0xFF5B86E5))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF5B86E5), Color(0xFF36D1DC)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Icon(Icons.person_outline,
                  size: 50, color: Color(0xFF5B86E5)),
            ),
            const SizedBox(height: 20),
            const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              hintText: 'Email',
              prefixIcon: Icons.mail_outline,
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              hintText: 'Password',
              prefixIcon: Icons.lock_outline,
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              hintText: 'Confirm Password',
              prefixIcon: Icons.lock_outline,
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 48.0,
              width: double.infinity,
              child: CustomButton(
                title: 'Sign Up',
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomeScreen()));
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Login',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
