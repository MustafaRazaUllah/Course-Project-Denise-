import 'package:first_time_project/Utils/custom_text.dart';
import 'package:first_time_project/Utils/images.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset(
                  AppImages.splashImage,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.black.withOpacity(0.6),
              ),
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
              )
            ],
          )),
    );
  }
}
