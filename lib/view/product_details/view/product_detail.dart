import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/utils/color.dart';
import 'package:untitled/view/product_details/controller/product_details_controller.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({super.key});
  final ProductDetailsController _controller =
      Get.put(ProductDetailsController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.white,
        body: _controller.onLoad.value
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.purple,
                ),
              )
            : SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: SafeArea(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 500,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          CarouselSlider(
                            items: List.generate(
                              _controller
                                  .productDetailsModel!.product!.images.length,
                              (index) {
                                return CachedNetworkImage(
                                  imageUrl: _controller.productDetailsModel!
                                      .product!.images[index].image,
                                  errorWidget: (context, url, error) =>
                                      Image.asset(
                                    "assets/images/brand_max.png",
                                    fit: BoxFit.cover,
                                  ),
                                );
                              },
                            ),
                            options: CarouselOptions(height: 500),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () => Get.back(),
                                  icon: Icon(Icons.arrow_back_ios_new)),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.ios_share)),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.favorite_border)),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.card_travel)),
                            ],
                          ),
                          Positioned(
                            top: 50,
                            left: 0,
                            child: Container(
                              width: 100,
                              height: 20,
                              color: ColorConstants.offer,
                              child: Center(
                                child: Text(
                                    '${_controller.productDetailsModel!.product!.discount}% OFF'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      title: Text(
                          _controller.productDetailsModel!.product!.metaTitle),
                    )
                  ],
                )),
              ),
      );
    });
  }
}
