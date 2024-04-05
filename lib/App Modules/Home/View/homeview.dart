import 'package:first_time_project/Utils/custom_text.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          title: "Home",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.red,
        ),
      ),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: CustomText(
                title: "Top 10 Perfumes",
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 15),
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 80,
                    width: 140,
                    margin: const EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber,
                    ),
                    child: Center(
                      child: CustomText(
                        title: index.toString(),
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: CustomText(
                title: "All Perfumes",
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: [
                  SizedBox(
                    // height: 100,
                    width: double.infinity,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      scrollDirection: Axis.vertical,
                      itemCount: 30,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 80,
                          width: 140,
                          margin: const EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.purple,
                          ),
                          child: Center(
                            child: CustomText(
                              title: index.toString(),
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                        mainAxisSpacing: 0,
                        crossAxisSpacing: 0,
                      ),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 30,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          color: Colors.green,
                          child: Center(
                            child: Center(
                              child: CustomText(
                                title: index.toString(),
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
