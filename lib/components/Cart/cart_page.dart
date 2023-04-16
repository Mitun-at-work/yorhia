import 'package:flutter/material.dart';
import 'package:yoriha/global/cart_holder.dart';
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
        toolbarHeight: 65,
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                const Expanded(
                  child: CartScrollView(),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: appBarColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: SizedBox(
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: highlightColor,
                        shape: const RoundedRectangleBorder(),
                      ),
                      child: const Text(
                        "\$300 Shop Now",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
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

class CartScrollView extends StatefulWidget {
  const CartScrollView({
    super.key,
  });

  @override
  State<CartScrollView> createState() => _CartScrollViewState();
}

class _CartScrollViewState extends State<CartScrollView> {
  @override
  Widget build(BuildContext context) {
    if (cartProducts.isNotEmpty) {
      return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 1,
          vertical: 10,
        ),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: cartProducts.length,
          itemBuilder: (context, index) {
            return Container(
              height: 150,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(
                top: 15,
                right: 8,
                left: 8,
              ),
              decoration: const BoxDecoration(
                color: appBarColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    25,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(25),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(cartProducts[index]),
                          ),
                          color: highlightColor,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 25,
                          left: 20,
                        ),
                        margin: const EdgeInsets.only(left: 8),
                        child: Column(
                          children: [
                            const Text(
                              "Gingleey Oil",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 20,
                                right: 45,
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                color: highlightColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                "12Kg",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        print("State Updated");
                        cartProducts.remove(cartProducts[index]);
                      });
                    },
                    icon: const Icon(
                      Icons.cancel,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    } else {
      return const Center(
        child: Text(
          'There are no products to show',
          style: TextStyle(
            fontSize: 18,
            color: lightText,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }
  }
}
