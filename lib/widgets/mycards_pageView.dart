import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/card_widget.dart';
import 'package:responsive_dashboard/widgets/custom_dot.dart';

class MycardsPageview extends StatefulWidget {
  const MycardsPageview({super.key});

  @override
  State<MycardsPageview> createState() => _MycardsPageviewState();
}

class _MycardsPageviewState extends State<MycardsPageview> {
  final PageController pageController = PageController();
  int currentPage = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          // there is a nother solution is using Expanded Page View Package it's take automatically the height of the child
          aspectRatio: 420 / 215,
          child: PageView.builder(
            controller: pageController,
            itemCount: 3,
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 10),
              child: const CardWidget(),
            ),
          ),
        ),
        Gap(20),
        Row(
          children: List.generate(
            3,  // usually this number come from the length of the list of cards not fixed number
           (index) {
              if (index == currentPage) {
                  return const ActiveDot();
                } else {
                  return const InactiveDot();
                }
           },
          ),
        ),
      ],
    );
  }
}


