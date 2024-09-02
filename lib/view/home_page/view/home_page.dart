import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/utils/color.dart';
import 'package:untitled/view/cart/view/cart.dart';
import 'package:untitled/view/home_page/controller/home_page_controller.dart';
import 'package:untitled/view/product_details/view/product_detail.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomePageController _homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.white,
        body: _homePageController.onLoad.value
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.purple,
                ),
              )
            : SafeArea(
                child: Column(
                children: [
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/splash_screen.png",
                            width: 60, height: 60),
                        IconButton(
                            onPressed: () => Get.to(() => Cart()),
                            icon: Icon(Icons.card_travel))
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  // SizedBox(
                  //   height: 100,
                  //   child: ListView.builder(
                  //     itemCount:
                  //         _homePageController.homePageModel!.banner2.length,
                  //     itemBuilder: (context, index) {
                  //       return CachedNetworkImage(
                  //           imageUrl: _homePageController
                  //               .homePageModel!.banner1[0].image);
                  //     },
                  //   ),
                  // )
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [
                        titleAndView(title: 'Our Products'),
                        GestureDetector(
                          onTap: () => Get.to(() => ProductDetail()),
                          child: SizedBox(
                            height: 150,
                            child: ListView.separated(
                              itemCount: _homePageController
                                  .homePageModel!.ourProducts.length,
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (context, index) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: CachedNetworkImage(
                                    imageUrl: _homePageController.homePageModel!
                                        .ourProducts[index].image,
                                    errorWidget: (context, url, error) =>
                                        ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        "assets/images/brand_max.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  SizedBox(width: 10),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        titleAndView(title: 'Suggested For You'),
                        GestureDetector(
                          onTap: () => Get.to(() => ProductDetail()),
                          child: SizedBox(
                            height: 250,
                            child: ListView.separated(
                              itemCount: _homePageController
                                  .homePageModel!.suggestedProducts.length,
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Stack(
                                        children: [
                                          CachedNetworkImage(
                                            imageUrl: _homePageController
                                                .homePageModel!
                                                .suggestedProducts[index]
                                                .image,
                                            errorWidget:
                                                (context, url, error) =>
                                                    ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                "assets/images/brand_max.png",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            width: 150,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                          Positioned(
                                            right: 0,
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: _homePageController
                                                          .homePageModel!
                                                          .suggestedProducts[
                                                              index]
                                                          .wishlist ==
                                                      1
                                                  ? Icon(
                                                      CupertinoIcons.heart_fill,
                                                      color: Colors.black,
                                                    )
                                                  : Icon(
                                                      CupertinoIcons.heart,
                                                      color: Colors.black,
                                                    ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      _homePageController.homePageModel!
                                          .suggestedProducts[index].name,
                                      style: GoogleFonts.rubik(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      'OMR ${_homePageController.homePageModel!.suggestedProducts[index].price}',
                                      style: GoogleFonts.rubik(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ],
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  SizedBox(width: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              )),
      );
    });
  }

  titleStyle() {
    return GoogleFonts.rubik(
      fontWeight: FontWeight.w500,
      fontSize: 18,
      color: Colors.black,
    );
  }

  viewAllStyle() {
    return GoogleFonts.rubik(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: ColorConstants.viewAll,
        decoration: TextDecoration.underline);
  }

  titleAndView({required String title}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: titleStyle()),
          Text('View All', style: viewAllStyle()),
        ],
      ),
    );
  }
}
