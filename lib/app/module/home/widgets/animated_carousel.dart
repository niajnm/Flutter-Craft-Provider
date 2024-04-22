import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AnimatedCorousel extends StatefulWidget {
  const AnimatedCorousel({super.key});

  @override
  State<AnimatedCorousel> createState() => _AnimatedCorouselState();
}

class _AnimatedCorouselState extends State<AnimatedCorousel> {
  int _currentPage = 0;
  late Timer _timer;
  var carouselItem;
  final List<String?> imageUrls = [
    'assets/images/dummy/slidder1.jpg',
    'assets/images/dummy/slidder2.jpg',
    'assets/images/dummy/slidder3.jpg',
    null,
    'assets/images/dummy/slidder1.jpg',
    null,
    'assets/images/dummy/slidder1.jpg',
  ];

  @override
  void initState() {
    super.initState();
    carouselItem = imageUrls
        .where((imageUrl) => imageUrl != null)
        .map((imageUrl) => Container(
              // Replace this with your image rendering logic
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl!),
                  fit: BoxFit.fill,
                ),
              ),
            ))
        .toList();
    // Initialize a timer to auto-swap pages every 3 seconds
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPage < carouselItem.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  // final List<Widget> carouselItems = [
  //   Container(
  //     color: Colors.red,
  //     child: Center(
  //       child: Text(
  //         'Item 1',
  //         style: TextStyle(fontSize: 24, color: Colors.white),
  //       ),
  //     ),
  //   ),
  //   Container(
  //     color: Colors.blue,
  //     child: Center(
  //       child: Text(
  //         'Item 2',
  //         style: TextStyle(fontSize: 24, color: Colors.white),
  //       ),
  //     ),
  //   ),
  //   Container(
  //     color: Colors.green,
  //     child: Center(
  //       child: Text(
  //         'Item 3',
  //         style: TextStyle(fontSize: 24, color: Colors.white),
  //       ),
  //     ),
  //   ),
  // ];

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 170.h,
          child: PageView(
              //   children: carouselItems,
              children: carouselItem,
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SmoothPageIndicator(
            controller: _controller,
            count: carouselItem.length,
            onDotClicked: (index) => _controller.animateToPage(index,
                duration: Duration(milliseconds: 500),
                curve: Curves.bounceInOut),
            effect: const JumpingDotEffect(
              activeDotColor: Color.fromARGB(255, 37, 37, 37),
              dotHeight: 10,
              dotWidth: 10,
              jumpScale: .7,
              verticalOffset: 15,
            ),

            //  ExpandingDotsEffect(
            //     activeDotColor: Colors.deepPurple,
            //     dotColor: Colors.deepPurple.shade100),
          ),
        ),
      ],
    );
  }
}
