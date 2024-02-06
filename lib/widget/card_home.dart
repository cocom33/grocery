// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:grocery/data.dart';
import 'package:grocery/pages/product_detail.dart';

class CardHome extends StatelessWidget {
  final Product data;
  const CardHome({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return ProductDetail(product: data);
          },
        ));
      },
      child: Card(
        elevation: 2,
        shadowColor: Colors.green,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: data.image,
              child: SizedBox(
                width: 150,
                height: 150,
                child: Image.asset(data.image),
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              "Rp ${data.price}",
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(
              height: 2.0,
            ),
            Text(
              data.name,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 2.0,
            ),
            Text(
              data.quantity,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            const Divider(
              height: 2,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.add_shopping_cart,
                      size: 20,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 2.0,
                    ),
                    Text(
                      "Beli",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 8.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.remove_circle_outline,
                      color: Colors.green,
                      size: 18,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text('0'),
                    ),
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.green,
                      size: 18,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
