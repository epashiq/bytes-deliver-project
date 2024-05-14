import 'package:bytes_deliver_project/controller/provider/product_provider.dart';
import 'package:bytes_deliver_project/view/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductPage extends ConsumerWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text(
            'products',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        body: FutureBuilder(
            future: ref.watch(productProvider.notifier).getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [ProductWidget(model: snapshot.data!)],
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text('Error'),
                );
              } else {
                return const LinearProgressIndicator();
              }
            }));
  }
}
