import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: Row(
        children: [
          // Left side - Image
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/coffee.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Right side - Login form
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Logo
                  Center(
                    child: SizedBox(
                      width: 70,
                      height: 70,
                      child: Image.asset('assets/images/Frame.png')
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Welcome text
                  const Text(
                    'Welcome Back, Please login to your account',
                    style: AppTextStyles.subHeading,
                  ),

                  const SizedBox(height: 20),

                  // Email field
                  CustomTextField(
                    label: 'Email address',
                    hintText: 'jubaer@gmail.com',
                    controller: _emailController,
                  ),

                  const SizedBox(height: 15),

                  // Password field
                  CustomTextField(
                    label: 'Password',
                    hintText: '.....',
                    isPassword: true,
                    controller: _passwordController,
                  ),

                  const SizedBox(height: 15),

                  // Remember me & Forgot password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: _rememberMe,
                            onChanged: (value) {
                              setState(() {
                                _rememberMe = value ?? false;
                              });
                            },
                            fillColor: MaterialStateProperty.all(
                              AppColors.primaryBrown,
                            ),
                          ),
                          const Text(
                            'Remember me',
                            style: AppTextStyles.bodyText,
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          // Handle forgot password
                        },
                        child: const Text(
                          'Forgot password ?',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  // Sign In button
                  CustomButton(
                    text: 'Sign In',
                    onPressed: () {
                      // Handle sign in
                      print('Email: ${_emailController.text}');
                      print('Password: ${_passwordController.text}');
                    },
                  ),

                  const SizedBox(height: 10),

                  // Or divider
                  const Center(
                    child: Text(
                      'Or',
                      style: AppTextStyles.bodyText,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Google sign in button
                  CustomButton(
                    text: 'Sign in with google',
                    onPressed: () {
                      // Handle Google sign in
                    },
                    backgroundColor: Colors.transparent,
                    textColor: AppColors.white,
                    icon: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(
                        Icons.g_mobiledata,
                        color: Colors.green,
                        size: 20,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Sign up link
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account? ",
                          style: AppTextStyles.bodyText,
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to sign up
                          },
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}