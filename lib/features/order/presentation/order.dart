import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:yoriha/features/home/domain/entity/product_entity.dart';
import 'package:yoriha/features/order/presentation/widgets/order_card.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.w),
      child: Column(
        children: [
          ExpansionTile(
            childrenPadding: const EdgeInsets.all(10),
            trailing: const Text("10:20 AM"),
            title: const Text("#19029102902190"),
            subtitle: const Text("2nd Febuary 2023"),
            children: [
              ListTile(
                onTap: () {},
                title: const Text("Order Status"),
                trailing: const Text("Delivered"),
              ),
              ListTile(
                onTap: () {},
                title: const Text("Order Value"),
                trailing: const Text("500"),
              ),
              ExpansionTile(
                  trailing: const Text("8"),
                  title: const Text("Ordered Prodcuts"),
                  children: [
                    SizedBox(
                      height: 270.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return OrderProductCard(
                            productEntity: ProductEntity(
                              productName: "Wheat",
                              productPrice: 200,
                              imgLink: "300",
                            ),
                          );
                        },
                      ),
                    ),
                  ]),
              ListTile(
                onTap: () {},
                title: const Text("Verification"),
                trailing: TextButton(
                  onPressed: () {
                    showAboutDialog(
                      context: context,
                      children: [
                        SizedBox(
                          height: 180.h,
                          width: 150.w,
                          child: QrImageView(
                            gapless: true,
                            data: "data",
                            padding: const EdgeInsets.all(0),
                            size: 200,
                          ),
                        ),
                      ],
                    );
                  },
                  child: const Text("Show Qr"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
