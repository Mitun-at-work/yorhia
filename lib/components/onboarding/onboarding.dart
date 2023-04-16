import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: demo_data.length,
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _pageIndex = index;
                });
              },
              itemBuilder: (context, index) => OnBoardContent(
                image: demo_data[index].image,
                title: demo_data[index].title,
                description: demo_data[index].description,
              ),
            ),
          ),
          Row(
            children: [
              TextButton(
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.grey),
                ),
                onPressed: () {
                  _pageController.nextPage(
                      curve: Curves.ease,
                      duration: const Duration(milliseconds: 300));
                },
              ),
              const Spacer(),
              ...List.generate(
                demo_data.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: dotindicator(
                    isActive: index == _pageIndex,
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 60,
                width: 60,
                child: TextButton(
                  onPressed: () {
                    _pageController.nextPage(
                        curve: Curves.ease,
                        duration: const Duration(milliseconds: 300));
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    )));
  }
}

class dotindicator extends StatelessWidget {
  const dotindicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive ? 12 : 4,
      width: 4,
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard(
      {required this.image, required this.title, required this.description});
}

final List<Onboard> demo_data = [
  Onboard(
      image: "assets/vec1.png",
      title: "Find the item you've \nbeen looking for",
      description:
          "Here you'll see rich varieties of goods, carefully classified for"),
  Onboard(
      image: "assets/vec2.png",
      title: "Get those shopping \nbags filled",
      description:
          "Add any item you want to your cart, or save it on your wishlist"),
  Onboard(
      image: "assets/vec3.png",
      title: "Fast & secure \npayment",
      description: "There are many payment options available for your ease"),
];

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 250,
        ),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
