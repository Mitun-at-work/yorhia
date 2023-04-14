import 'package:flutter/material.dart';
import 'package:yoriha/components/Cart/card.dart';
import 'package:yoriha/theme/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 20,
                ),
                child: InkWell(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 50,
                        left: 85,
                        right: 100,
                        // bottom: 30,
                      ),
                      child: Text(
                        "My Cart",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: GridView.builder(
                itemCount: 5,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 2.3,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) => const CardPage(),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: highlightColor,
                      shape: const StadiumBorder()),
                  child: const Text(
                    "\$300 Check Out",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
