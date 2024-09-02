// To parse this JSON data, do
//
//     final homePageModel = homePageModelFromJson(jsonString);

import 'dart:convert';

HomePageModel homePageModelFromJson(String str) =>
    HomePageModel.fromJson(json.decode(str));

String homePageModelToJson(HomePageModel data) => json.encode(data.toJson());

class HomePageModel {
  final int success;
  final String message;
  final List<Banner> banner1;
  final List<Banner> banner2;
  final List<Banner> banner3;
  final List<Banner> banner4;
  final List<dynamic> banner5;
  final List<BestSeller> recentviews;
  final List<BestSeller> ourProducts;
  final List<BestSeller> suggestedProducts;
  final List<BestSeller> bestSeller;
  final List<BestSeller> flashSail;
  final List<dynamic> newarrivals;
  final List<Ory> categories;
  final List<Ory> topAccessories;
  final List<Featuredbrand> featuredbrands;
  final int cartcount;
  final int wishlistcount;
  final Currency? currency;
  final int notificationCount;

  HomePageModel({
    required this.success,
    required this.message,
    required this.banner1,
    required this.banner2,
    required this.banner3,
    required this.banner4,
    required this.banner5,
    required this.recentviews,
    required this.ourProducts,
    required this.suggestedProducts,
    required this.bestSeller,
    required this.flashSail,
    required this.newarrivals,
    required this.categories,
    required this.topAccessories,
    required this.featuredbrands,
    required this.cartcount,
    required this.wishlistcount,
    required this.currency,
    required this.notificationCount,
  });

  factory HomePageModel.fromJson(Map<String, dynamic> json) => HomePageModel(
        success: json["success"] ?? 0,
        message: json["message"] ?? '',
        banner1: json["banner1"] == null
            ? []
            : List<Banner>.from(json["banner1"].map((x) => Banner.fromJson(x))),
        banner2: json["banner2"] == null
            ? []
            : List<Banner>.from(json["banner2"].map((x) => Banner.fromJson(x))),
        banner3: json["banner3"] == null
            ? []
            : List<Banner>.from(json["banner3"].map((x) => Banner.fromJson(x))),
        banner4: json["banner4"] == null
            ? []
            : List<Banner>.from(json["banner4"].map((x) => Banner.fromJson(x))),
        banner5: json["banner5"] == null
            ? []
            : List<dynamic>.from(json["banner5"].map((x) => x)),
        recentviews: json["recentviews"] == null
            ? []
            : List<BestSeller>.from(
                json["recentviews"].map((x) => BestSeller.fromJson(x))),
        ourProducts: json["our_products"] == null
            ? []
            : List<BestSeller>.from(
                json["our_products"].map((x) => BestSeller.fromJson(x))),
        suggestedProducts: json["suggested_products"] == null
            ? []
            : List<BestSeller>.from(
                json["suggested_products"].map((x) => BestSeller.fromJson(x))),
        bestSeller: json["best_seller"] == null
            ? []
            : List<BestSeller>.from(
                json["best_seller"].map((x) => BestSeller.fromJson(x))),
        flashSail: json["flash_sail"] == null
            ? []
            : List<BestSeller>.from(
                json["flash_sail"].map((x) => BestSeller.fromJson(x))),
        newarrivals: json["newarrivals"] == null
            ? []
            : List<dynamic>.from(json["newarrivals"].map((x) => x)),
        categories: json["categories"] == null
            ? []
            : List<Ory>.from(json["categories"].map((x) => Ory.fromJson(x))),
        topAccessories: json["top_accessories"] == null
            ? []
            : List<Ory>.from(
                json["top_accessories"].map((x) => Ory.fromJson(x))),
        featuredbrands: json["featuredbrands"] == null
            ? []
            : List<Featuredbrand>.from(
                json["featuredbrands"].map((x) => Featuredbrand.fromJson(x))),
        cartcount: json["cartcount"] ?? 0,
        wishlistcount: json["wishlistcount"] ?? 0,
        currency: json["currency"] == null
            ? null
            : Currency.fromJson(json["currency"]),
        notificationCount: json["notification_count"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "banner1": List<dynamic>.from(banner1.map((x) => x.toJson())),
        "banner2": List<dynamic>.from(banner2.map((x) => x.toJson())),
        "banner3": List<dynamic>.from(banner3.map((x) => x.toJson())),
        "banner4": List<dynamic>.from(banner4.map((x) => x.toJson())),
        "banner5": List<dynamic>.from(banner5.map((x) => x)),
        "recentviews": List<dynamic>.from(recentviews.map((x) => x.toJson())),
        "our_products": List<dynamic>.from(ourProducts.map((x) => x.toJson())),
        "suggested_products":
            List<dynamic>.from(suggestedProducts.map((x) => x.toJson())),
        "best_seller": List<dynamic>.from(bestSeller.map((x) => x.toJson())),
        "flash_sail": List<dynamic>.from(flashSail.map((x) => x.toJson())),
        "newarrivals": List<dynamic>.from(newarrivals.map((x) => x)),
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
        "top_accessories":
            List<dynamic>.from(topAccessories.map((x) => x.toJson())),
        "featuredbrands":
            List<dynamic>.from(featuredbrands.map((x) => x.toJson())),
        "cartcount": cartcount,
        "wishlistcount": wishlistcount,
        "currency": currency!.toJson(),
        "notification_count": notificationCount,
      };
}

class Banner {
  final int id;
  final int linkType;
  final String linkValue;
  final String image;
  final String title;
  final String subTitle;
  final dynamic logo;

  Banner({
    required this.id,
    required this.linkType,
    required this.linkValue,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.logo,
  });

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        id: json["id"] ?? 0,
        linkType: json["link_type"] ?? 0,
        linkValue: json["link_value"] ?? '',
        image: json["image"] ?? '',
        title: json["title"] ?? '',
        subTitle: json["sub_title"] ?? '',
        logo: json["logo"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "link_type": linkType,
        "link_value": linkValue,
        "image": image,
        "title": title,
        "sub_title": subTitle,
        "logo": logo,
      };
}

class BestSeller {
  final int productId;
  final String slug;
  final String code;
  final String? homeImg;
  final String name;
  final int? isGender;
  final Store? store;
  final Manufacturer? manufacturer;
  final String oldprice;
  final String price;
  final String image;
  final int cart;
  final int wishlist;

  BestSeller({
    required this.productId,
    required this.slug,
    required this.code,
    required this.homeImg,
    required this.name,
    required this.isGender,
    required this.store,
    required this.manufacturer,
    required this.oldprice,
    required this.price,
    required this.image,
    required this.cart,
    required this.wishlist,
  });

  factory BestSeller.fromJson(Map<String, dynamic> json) => BestSeller(
        productId: json["productId"] ?? 0,
        slug: json["slug"] ?? '',
        code: json["code"] ?? '',
        homeImg: json["home_img"] ?? '',
        name: json["name"] ?? '',
        isGender: json["is_gender"] ?? 0,
        store: json["store"] == null ? null : storeValues.map[json["store"]]!,
        manufacturer: json["manufacturer"] == null
            ? null
            : manufacturerValues.map[json["manufacturer"]]!,
        oldprice: json["oldprice"] ?? '',
        price: json["price"] ?? '',
        image: json["image"] ?? '',
        cart: json["cart"] ?? 0,
        wishlist: json["wishlist"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "productId": productId,
        "slug": slug,
        "code": code,
        "home_img": homeImg,
        "name": name,
        "is_gender": isGender,
        "store": storeValues.reverse[store],
        "manufacturer": manufacturerValues.reverse[manufacturer],
        "oldprice": oldprice,
        "price": price,
        "image": image,
        "cart": cart,
        "wishlist": wishlist,
      };
}

enum Manufacturer { FURLA, LIUJO, MARELLA, MAX_CO, PENNYBLACK }

final manufacturerValues = EnumValues({
  "FURLA": Manufacturer.FURLA,
  "LIUJO": Manufacturer.LIUJO,
  "MARELLA": Manufacturer.MARELLA,
  "MAX&Co": Manufacturer.MAX_CO,
  "PENNYBLACK": Manufacturer.PENNYBLACK
});

enum Store { SWAN }

final storeValues = EnumValues({"Swan": Store.SWAN});

class Ory {
  final Featuredbrand category;

  Ory({
    required this.category,
  });

  factory Ory.fromJson(Map<String, dynamic> json) => Ory(
        category: Featuredbrand.fromJson(json["category"]),
      );

  Map<String, dynamic> toJson() => {
        "category": category.toJson(),
      };
}

class Featuredbrand {
  final int id;
  final String slug;
  final String image;
  final String name;
  final String? description;

  Featuredbrand({
    required this.id,
    required this.slug,
    required this.image,
    required this.name,
    this.description,
  });

  factory Featuredbrand.fromJson(Map<String, dynamic> json) => Featuredbrand(
        id: json["id"] ?? 0,
        slug: json["slug"] ?? '',
        image: json["image"] ?? '',
        name: json["name"] ?? '',
        description: json["description"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "slug": slug,
        "image": image,
        "name": name,
        "description": description,
      };
}

class Currency {
  final String name;
  final String code;
  final String symbolLeft;
  final String symbolRight;
  final String value;
  final int status;

  Currency({
    required this.name,
    required this.code,
    required this.symbolLeft,
    required this.symbolRight,
    required this.value,
    required this.status,
  });

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        name: json["name"] ?? '',
        code: json["code"] ?? '',
        symbolLeft: json["symbol_left"] ?? '',
        symbolRight: json["symbol_right"] ?? '',
        value: json["value"] ?? '',
        status: json["status"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "code": code,
        "symbol_left": symbolLeft,
        "symbol_right": symbolRight,
        "value": value,
        "status": status,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
