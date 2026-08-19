import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/app_scaffold.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return AppScaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isLargeScreen = constraints.maxWidth > 600;
          final maxWidth = isLargeScreen ? 400.0 : constraints.maxWidth;

          return SingleChildScrollView(
            child: Center(
              // ... di dalam center
              child: Container(
                width: maxWidth,
                padding: EdgeInsets.all(screenWidth * 0.06),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: screenHeight * 0.1),

                    // TODO: Add logo here

                    SizedBox(height: screenHeight * 0.04),

                    // Signin Title
                    Text(
                      'Join AnimeVerse!',
                      style: TextStyle(
                        fontSize: screenWidth * (isLargeScreen ? 0.06 : 0.1),
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ), // TextStyle
                      textAlign: TextAlign.center,
                    ), // Text

                    SizedBox(height: screenHeight * 0.01),

                    Text(
                      'Create your account and start exploring',
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70,
                      ), // TextStyle
                      textAlign: TextAlign.center,
                    ), // Text

                    SizedBox(height: screenHeight * 0.05),

                    // Email TextField
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: Colors.white70,
                        ), // TextStyle
                        filled: true,
                        fillColor: Colors.white.withValues(alpha: 0.1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(screenWidth * 0.03),
                          borderSide: BorderSide.none,
                        ), // OutlineInputBorder
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white70,
                          size: screenWidth * 0.06,
                        ), // Icon
                        contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.025,
                          horizontal: screenWidth * 0.055,
                        ), // EdgeInsets.symmetric
                      ), // InputDecoration
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: Colors.white,
                      ), // TextStyle
                      keyboardType: TextInputType.emailAddress,
                    ), // TextField

                    SizedBox(height: screenHeight * 0.02),

                    // Password TextField
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: Colors.white70,
                        ), // TextStyle
                        filled: true,
                        fillColor: Colors.white.withValues(alpha: 0.1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(screenWidth * 0.03),
                          borderSide: BorderSide.none,
                        ), // OutlineInputBorder
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.white70,
                          size: screenWidth * 0.06,
                        ), // Icon
                        suffixIcon: Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.white70,
                          size: screenWidth * 0.06,
                        ), // Icon
                        contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.025,
                          horizontal: screenWidth * 0.055,
                        ), // EdgeInsets.symmetric
                      ), // InputDecoration
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: Colors.white,
                      ), // TextStyle
                      obscureText: true,
                    ), // TextField

                    SizedBox(height: screenHeight * 0.01),


                    SizedBox(height: screenHeight * 0.03),
                    // Sign In Button
                    SizedBox(
                      width: double.infinity,
                      height: screenHeight * 0.075,
                      child: ElevatedButton(
                        onPressed: () {
                          // TODO: Implement sign in functionality
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.withValues(alpha: 0.8),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.03),
                          ), // RoundedRectangleBorder
                          elevation: 5,
                        ), // ElevatedButton.styleFrom
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: screenWidth * 0.045,
                            fontWeight: FontWeight.w600,
                          ), // TextStyle
                        ), // Text
                      ), // ElevatedButton
                    ), // SizedBox

                    SizedBox(height: screenHeight * 0.03),

                    // or continue with
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.white.withValues(alpha: 0.3),
                            thickness: 1,
                          ), // Divider
                        ), // Expanded
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                          child: Text(
                            'or',
                            style: TextStyle(
                              fontSize: screenWidth * 0.035,
                              color: Colors.white70,
                            ), // TextStyle
                          ), // Text
                        ), // Padding
                        Expanded(
                          child: Divider(
                            color: Colors.white.withValues(alpha: 0.3),
                            thickness: 1,
                          ), // Divider
                        ), // Expanded
                      ],
                    ), // Row

                    SizedBox(height: screenHeight * 0.03),

                    // Sign in with Google
                    SizedBox(
                      width: double.infinity,
                      height: screenHeight * 0.075,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // TODO: Implement Google sign in functionality
                        },
                        icon: SvgPicture.asset(
                          'assets/images/google_icon.svg',
                          height: screenWidth * 0.06,
                          width: screenWidth * 0.06,
                        ), // SvgPicture.asset
                        label: Text(
                          'Continue with Google',
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ), // TextStyle
                        ), // Text
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black45,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.03),
                            side: BorderSide(
                              color: Colors.black45,
                              width: 1,
                            ), // BorderSide
                          ), // RoundedRectangleBorder
                          elevation: 3,
                        ), // ElevatedButton.styleFrom
                      ), // ElevatedButton.icon
                    ), // SizedBox

                    SizedBox(height: screenHeight * 0.04),

                    // Sign up link
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: Colors.white70,
                          ), // TextStyle
                        ), // Text
                        TextButton(
                          onPressed: () {
                            // TODO: Navigate to sign up screen
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue.shade300,
                            ), // TextStyle
                          ), // Text
                        ), // TextButton
                      ],
                    ), // Row

                    SizedBox(height: screenHeight * 0.05),
                  ],
                ), // Column
              ), // Container
            ), // Center
          ); // SingleChildScrollView
        },
      ), // LayoutBuilder
    );
  }
}
