import 'package:bytes_deliver_project/model/product_model.dart';
import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  final ProductModel model;
  const OverviewPage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'Product Details',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 300,
              width: MediaQuery.sizeOf(context).width,
              child: Image.network(
                model.image,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              model.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Text(
              model.type,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            Text(
              '₹${model.price}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.green),
            )
          ],
        ),
      ),
    );
  }
}
