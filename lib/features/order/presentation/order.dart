import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yoriha/features/home/domain/entity/product_entity.dart';
import 'package:yoriha/features/order/presentation/widgets/order_card.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
      child: Column(
        children: [
          ExpansionTile(
            trailing: const Text("10:20 AM"),
            title: const Text("#19029102902190"),
            subtitle: const Text("2nd Febuary 2023"),
            children: [
              const ListTile(
                title: Text("Order Status"),
                trailing: Text("Delivered"),
              ),
              const ListTile(
                title: Text("Order Value"),
                trailing: Text("500"),
              ),
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
            ],
          ),
        ],
      ),
    );
  }
}
