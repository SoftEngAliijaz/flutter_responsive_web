import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/screens/auth/sign_up_screen.dart';
import 'package:flutter_responsive_web/screens/main/home_screen.dart';
import 'package:flutter_responsive_web/widgets/custom_button.dart';
import 'package:flutter_responsive_web/widgets/custom_text_field.dart';
import 'package:responsive_framework/responsive_framework.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  Widget _buildLoginForm(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 50,
          backgroundColor: Colors.white,
          child: Icon(Icons.person_outline, size: 50, color: Color(0xFF5B86E5)),
        ),
        const SizedBox(height: 20),
        const Text(
          'Welcome Back!',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Log in to your account',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white70,
          ),
        ),
        const SizedBox(height: 30),
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
        const SizedBox(height: 30),
        SizedBox(
          height: 48.0,
          width: double.infinity,
          child: CustomButton(
            title: 'Login',
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
              'Don\'t have an account?',
              style: TextStyle(color: Colors.white),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SignUpScreen()));
              },
              child:
                  const Text('Sign Up', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLeftPanel(Size size, BuildContext context) {
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
        child: _buildLoginForm(context),
      ),
    );
  }

  Widget _buildRightPanel() {
    return Expanded(
      child: Center(
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.white,
          child: Text(
            'Logo',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF5B86E5),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMobileLayout(Size size, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF5B86E5), Color(0xFF36D1DC)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: _buildLoginForm(context),
    );
  }

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
                  _buildLeftPanel(size, context),
                  _buildRightPanel(),
                ],
              )
            : _buildMobileLayout(size, context),
      ),
    );
  }
}
