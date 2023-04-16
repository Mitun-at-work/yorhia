import 'package:flutter/material.dart';
import 'package:yoriha/components/Cart/card.dart';
import 'package:yoriha/theme/colors.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  static List<String> imageLinks = [
    "https://www.shutterstock.com/image-photo/red-apple-isolated-on-white-600w-1727544364.jpg",
    "https://www.bookmymango.in/wp-content/uploads/2021/04/gir-kesar.png",
    "https://www.shutterstock.com/image-photo/ripe-orange-isolated-on-white-260nw-606022676.jpg",
    "https://media.istockphoto.com/id/1400057530/photo/bananas-isolated.jpg?b=1&s=170667a&w=0&k=20&c=uiSdjIQkTr7S4gEdW_oB_5zfFYhpfe0LP-CryQl49w4=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrn4mlV6Yb0_z-YbsE3yyFR47qG8kwcP35Q_Mj19Vl&s",
  ];

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Cart"),
        backgroundColor: appBarColor,
        elevation: 0,
        toolbarHeight: 70,
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                      vertical: 10,
                    ),
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: CartPage.imageLinks.length,
                      itemBuilder: (context, index) {
                        return CardPage(imageurl: CartPage.imageLinks[index]);
                      },
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: SizedBox(
                      height: 50,
                      width: 350,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: highlightColor,
                        ),
                        child: const Text(
                          "\$300 Shop Now",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
