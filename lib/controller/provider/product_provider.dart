
import 'package:bytes_deliver_project/controller/services/product_api_services.dart';
import 'package:bytes_deliver_project/model/product_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'product_provider.g.dart';

@riverpod
class Product extends _$Product{
  @override
  void build(){}

  Future<List<ProductModel>?>getData()async{
    await ProductServices.getProducts(1);
  }
}