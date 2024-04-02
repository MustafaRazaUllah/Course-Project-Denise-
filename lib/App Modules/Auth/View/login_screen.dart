import 'package:first_time_project/Utils/custom_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: const Color.fromARGB(255, 1, 47, 1),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    border: Border.all(
                      color: Colors.yellowAccent,
                      width: 5,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: CustomText(
                    title: "Denise Perfume",
                    color: Colors.white.withOpacity(1),
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                const CustomText(
                  title: "Login",
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(
                    title: "Email",
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pink,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    hintText: "Enter Email Address",
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(
                    title: "Password",
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pink,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    hintText: "Enter your Password",
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerRight,
                  child: CustomText(
                    title: "Forgot Password",
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                    border: Border.all(
                      width: 2,
                      color: Colors.green,
                    ),
                  ),
                  child: const Center(
                    child: CustomText(
                      title: "Login",
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomText(
                      title: "Create New Account",
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    const CustomText(
                      title: " ( ",
                      color: Colors.pink,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    GestureDetector(
                      onTap: () {
                        print(" Event Call Successfully");
                      },
                      child: Container(
                        color: Colors.transparent,
                        child: const CustomText(
                          title: "Sign up",
                          color: Colors.yellowAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const CustomText(
                      title: " )",
                      color: Colors.pink,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
