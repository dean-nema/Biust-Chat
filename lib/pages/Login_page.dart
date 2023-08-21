import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stuff_neh/config/app_icons.dart';
import 'package:stuff_neh/config/app_routes.dart';
import 'package:stuff_neh/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                const Text(
                  'Hello world, welcome Back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                const Text(
                  "Log in to continue",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'User Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      print("Forgot is Clicked");
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("Forgot Password?"),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(AppRoutes.main);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.black,
                      ),
                      child: const Text("Log in")),
                ),
                Spacer(),
                Text(
                  'Or Sign in with',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Google is clicked");
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcons.google,
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Login with Google")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Twitter is clicked");
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcons.twitter,
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text("Login with Twitter")
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      "Don't have an account",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.amber,
                        ),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        )),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
