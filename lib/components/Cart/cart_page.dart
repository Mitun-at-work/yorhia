import 'package:flutter/material.dart';
import 'package:yoriha/components/Cart/card.dart';
import 'package:yoriha/theme/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  static List<String> imageLinks = [
    "https://www.shutterstock.com/image-photo/red-apple-isolated-on-white-600w-1727544364.jpg",
    "https://www.bookmymango.in/wp-content/uploads/2021/04/gir-kesar.png",
    "https://www.shutterstock.com/image-photo/ripe-orange-isolated-on-white-260nw-606022676.jpg",
    "https://media.istockphoto.com/id/1400057530/photo/bananas-isolated.jpg?b=1&s=170667a&w=0&k=20&c=uiSdjIQkTr7S4gEdW_oB_5zfFYhpfe0LP-CryQl49w4=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrn4mlV6Yb0_z-YbsE3yyFR47qG8kwcP35Q_Mj19Vl&s",
  ];

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
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
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
                          fontSize: 25,
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
          Expanded(
            child: Column(
              children: [
                Flexible(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: imageLinks.length,
                    itemBuilder: (context, index) {
                      return CardPage(imageurl: imageLinks[index]);
                    },
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
                          shape: const StadiumBorder(),
                        ),
                        child: const Text(
                          "\$300 Check Out",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
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
