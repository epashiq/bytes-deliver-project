import 'package:bytes_deliver_project/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final List<ProductModel> model;
  const ProductWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          mainAxisExtent: 200),
      itemBuilder: (context, index) => Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 220,
                height: 108,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: NetworkImage(model[index].image),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                model[index].title,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                model[index].type,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              Text(
                '₹${model[index].price}',
                style: const TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.green),
              )
            ],
          ),
        ),
      ),
      itemCount: model.length,
    );
  }
}
