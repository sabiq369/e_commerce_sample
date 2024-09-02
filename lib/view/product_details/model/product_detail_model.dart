// To parse this JSON data, do
//
//     final productDetails = productDetailsFromJson(jsonString);

import 'dart:convert';

ProductDetailsModel productDetailsFromJson(String str) =>
    ProductDetailsModel.fromJson(json.decode(str));

String productDetailsToJson(ProductDetailsModel data) =>
    json.encode(data.toJson());

class ProductDetailsModel {
  final int success;
  final List<dynamic> selectedOption;
  final String message;
  final Product? product;
  final dynamic enableGuestReview;

  ProductDetailsModel({
    required this.success,
    required this.selectedOption,
    required this.message,
    required this.product,
    required this.enableGuestReview,
  });

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      ProductDetailsModel(
        success: json["success"] ?? 0,
        selectedOption: json["selected_option"] == null
            ? []
            : List<dynamic>.from(json["selected_option"].map((x) => x)),
        message: json["message"] ?? '',
        product:
            json["product"] == null ? null : Product.fromJson(json["product"]),
        enableGuestReview: json["enable_guest_review"] ?? false,
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "selected_option": List<dynamic>.from(selectedOption.map((x) => x)),
        "message": message,
        "product": product!.toJson(),
        "enable_guest_review": enableGuestReview,
      };
}

class Product {
  final String slug;
  final String code;
  final String sizeChart;
  final String metaTitle;
  final String metaDescription;
  final dynamic metaKeywords;
  final int parentId;
  final String name;
  final String description;
  final String appDescription;
  final String storeslug;
  final String store;
  final String manufacturer;
  final String symbolLeft;
  final String symbolRight;
  final String purchaseReward;
  final String rewardPoint;
  final String oldprice;
  final String price;
  final String discount;
  final String rating;
  final int wishlist;
  final int cart;
  final int reviewscount;
  final int ratingcount;
  final String sellerrating;
  final List<dynamic> relatedProducts;
  final List<dynamic> options;
  final List<dynamic> allOptions;
  final List<Address> address;
  final List<Image> images;
  final List<StoreElement> stores;
  final List<dynamic> reviews;
  final List<dynamic> specifications;
  final List<dynamic> allProductOptions;
  final List<dynamic> pOptions;

  Product({
    required this.slug,
    required this.code,
    required this.sizeChart,
    required this.metaTitle,
    required this.metaDescription,
    required this.metaKeywords,
    required this.parentId,
    required this.name,
    required this.description,
    required this.appDescription,
    required this.storeslug,
    required this.store,
    required this.manufacturer,
    required this.symbolLeft,
    required this.symbolRight,
    required this.purchaseReward,
    required this.rewardPoint,
    required this.oldprice,
    required this.price,
    required this.discount,
    required this.rating,
    required this.wishlist,
    required this.cart,
    required this.reviewscount,
    required this.ratingcount,
    required this.sellerrating,
    required this.relatedProducts,
    required this.options,
    required this.allOptions,
    required this.address,
    required this.images,
    required this.stores,
    required this.reviews,
    required this.specifications,
    required this.allProductOptions,
    required this.pOptions,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        slug: json["slug"] ?? '',
        code: json["code"] ?? '',
        sizeChart: json["size_chart"] ?? '',
        metaTitle: json["meta_title"] ?? '',
        metaDescription: json["meta_description"] ?? '',
        metaKeywords: json["meta_keywords"] ?? '',
        parentId: json["parent_id"] ?? 0,
        name: json["name"] ?? '',
        description: json["description"] ?? '',
        appDescription: json["app_description"] ?? '',
        storeslug: json["storeslug"] ?? '',
        store: json["store"] ?? '',
        manufacturer: json["manufacturer"] ?? '',
        symbolLeft: json["symbol_left"] ?? '',
        symbolRight: json["symbol_right"] ?? '',
        purchaseReward: json["purchase_reward"] ?? '',
        rewardPoint: json["reward_point"] ?? '',
        oldprice: json["oldprice"] ?? '',
        price: json["price"] ?? '',
        discount: json["discount"] ?? '',
        rating: json["rating"] ?? '',
        wishlist: json["wishlist"] ?? 0,
        cart: json["cart"] ?? 0,
        reviewscount: json["reviewscount"] ?? 0,
        ratingcount: json["ratingcount"] ?? 0,
        sellerrating: json["sellerrating"] ?? '',
        relatedProducts: json[""] == null
            ? []
            : List<dynamic>.from(json["related_products"].map((x) => x)),
        options: json["options"] == null
            ? []
            : List<dynamic>.from(json["options"].map((x) => x)),
        allOptions: json["all_options"] == null
            ? []
            : List<dynamic>.from(json["all_options"].map((x) => x)),
        address: json["address"] == null
            ? []
            : List<Address>.from(
                json["address"].map((x) => Address.fromJson(x))),
        images: json["images"] == null
            ? []
            : List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        stores: json["stores"] == null
            ? []
            : List<StoreElement>.from(
                json["stores"].map((x) => StoreElement.fromJson(x))),
        reviews: json["reviews"] == null
            ? []
            : List<dynamic>.from(json["reviews"].map((x) => x)),
        specifications: json["specifications"] == null
            ? []
            : List<dynamic>.from(json["specifications"].map((x) => x)),
        allProductOptions: json["all_product_options"] == null
            ? []
            : List<dynamic>.from(json["all_product_options"].map((x) => x)),
        pOptions: json["p_options"] == null
            ? []
            : List<dynamic>.from(json["p_options"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "code": code,
        "size_chart": sizeChart,
        "meta_title": metaTitle,
        "meta_description": metaDescription,
        "meta_keywords": metaKeywords,
        "parent_id": parentId,
        "name": name,
        "description": description,
        "app_description": appDescription,
        "storeslug": storeslug,
        "store": store,
        "manufacturer": manufacturer,
        "symbol_left": symbolLeft,
        "symbol_right": symbolRight,
        "purchase_reward": purchaseReward,
        "reward_point": rewardPoint,
        "oldprice": oldprice,
        "price": price,
        "discount": discount,
        "rating": rating,
        "wishlist": wishlist,
        "cart": cart,
        "reviewscount": reviewscount,
        "ratingcount": ratingcount,
        "sellerrating": sellerrating,
        "related_products": List<dynamic>.from(relatedProducts.map((x) => x)),
        "options": List<dynamic>.from(options.map((x) => x)),
        "all_options": List<dynamic>.from(allOptions.map((x) => x)),
        "address": List<dynamic>.from(address.map((x) => x.toJson())),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "stores": List<dynamic>.from(stores.map((x) => x.toJson())),
        "reviews": List<dynamic>.from(reviews.map((x) => x)),
        "specifications": List<dynamic>.from(specifications.map((x) => x)),
        "all_product_options":
            List<dynamic>.from(allProductOptions.map((x) => x)),
        "p_options": List<dynamic>.from(pOptions.map((x) => x)),
      };
}

class Address {
  final int id;
  final int customerId;
  final String name;
  final dynamic address;
  final String buildingNumber;
  final String areaNumber;
  final dynamic streetNumber;
  final String city;
  final String region;
  final String? state;
  final int countryId;
  final String zipcode;
  final String mobile;
  final String addressType;
  final dynamic latitude;
  final dynamic longtitude;
  final int isDefault;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Country? country;

  Address({
    required this.id,
    required this.customerId,
    required this.name,
    required this.address,
    required this.buildingNumber,
    required this.areaNumber,
    required this.streetNumber,
    required this.city,
    required this.region,
    required this.state,
    required this.countryId,
    required this.zipcode,
    required this.mobile,
    required this.addressType,
    required this.latitude,
    required this.longtitude,
    required this.isDefault,
    required this.createdAt,
    required this.updatedAt,
    required this.country,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        id: json["id"] ?? 0,
        customerId: json["customer_id"] ?? 0,
        name: json["name"] ?? '',
        address: json["address"] ?? '',
        buildingNumber: json["building_number"] ?? '',
        areaNumber: json["area_number"] ?? '',
        streetNumber: json["street_number"] ?? '',
        city: json["city"] ?? '',
        region: json["region"] ?? '',
        state: json["state"] ?? '',
        countryId: json["country_id"] ?? '',
        zipcode: json["zipcode"] ?? '',
        mobile: json["mobile"] ?? '',
        addressType: json["address_type"] ?? '',
        latitude: json["latitude"] ?? '',
        longtitude: json["longtitude"] ?? '',
        isDefault: json["is_default"] ?? '',
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        country:
            json["country"] == null ? null : Country.fromJson(json["country"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "customer_id": customerId,
        "name": name,
        "address": address,
        "building_number": buildingNumber,
        "area_number": areaNumber,
        "street_number": streetNumber,
        "city": city,
        "region": region,
        "state": state,
        "country_id": countryId,
        "zipcode": zipcode,
        "mobile": mobile,
        "address_type": addressType,
        "latitude": latitude,
        "longtitude": longtitude,
        "is_default": isDefault,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "country": country!.toJson(),
      };
}

class Country {
  final int id;
  final String name;
  final String shortcode;
  final int dialCode;
  final int deliveryAvailable;
  final dynamic createdAt;
  final dynamic updatedAt;

  Country({
    required this.id,
    required this.name,
    required this.shortcode,
    required this.dialCode,
    required this.deliveryAvailable,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        id: json["id"] ?? 0,
        name: json["name"] ?? '',
        shortcode: json["shortcode"] ?? '',
        dialCode: json["dial_code"] ?? 0,
        deliveryAvailable: json["delivery_available"] ?? 0,
        createdAt: json["created_at"] ?? '',
        updatedAt: DateTime.parse(json["updated_at"]) ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "shortcode": shortcode,
        "dial_code": dialCode,
        "delivery_available": deliveryAvailable,
        "created_at": createdAt,
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Image {
  final int id;
  final String image;
  final int isDefault;

  Image({
    required this.id,
    required this.image,
    required this.isDefault,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"] ?? 0,
        image: json["image"] ?? '',
        isDefault: json["is_default"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "is_default": isDefault,
      };
}

class StoreElement {
  final int id;
  final int productId;
  final int storeId;
  final String defaultPrice;
  final String stock;
  final String minQuantity;
  final String maxQuantity;
  final String currentPrice;
  final String cost;
  final int returnPeriod;
  final int status;
  final String commission;
  final int stockAlertQuantity;
  final dynamic createdAt;
  final dynamic updatedAt;
  final String price;
  final String rating;
  final StoreStore? store;

  StoreElement({
    required this.id,
    required this.productId,
    required this.storeId,
    required this.defaultPrice,
    required this.stock,
    required this.minQuantity,
    required this.maxQuantity,
    required this.currentPrice,
    required this.cost,
    required this.returnPeriod,
    required this.status,
    required this.commission,
    required this.stockAlertQuantity,
    required this.createdAt,
    required this.updatedAt,
    required this.price,
    required this.rating,
    required this.store,
  });

  factory StoreElement.fromJson(Map<String, dynamic> json) => StoreElement(
        id: json["id"] ?? 0,
        productId: json["product_id"] ?? 0,
        storeId: json["store_id"] ?? 0,
        defaultPrice: json["default_price"] ?? '',
        stock: json["stock"] ?? '',
        minQuantity: json["min_quantity"] ?? '',
        maxQuantity: json["max_quantity"] ?? '',
        currentPrice: json["current_price"] ?? '',
        cost: json["cost"] ?? '',
        returnPeriod: json["return_period"] ?? 0,
        status: json["status"] ?? 0,
        commission: json["commission"] ?? '',
        stockAlertQuantity: json["stock_alert_quantity"] ?? '',
        createdAt: DateTime.parse(json["created_at"]) ?? '',
        updatedAt: DateTime.parse(json["updated_at"]) ?? '',
        price: json["price"] ?? '',
        rating: json["rating"] ?? '',
        store:
            json["store"] == null ? null : StoreStore.fromJson(json["store"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "product_id": productId,
        "store_id": storeId,
        "default_price": defaultPrice,
        "stock": stock,
        "min_quantity": minQuantity,
        "max_quantity": maxQuantity,
        "current_price": currentPrice,
        "cost": cost,
        "return_period": returnPeriod,
        "status": status,
        "commission": commission,
        "stock_alert_quantity": stockAlertQuantity,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "price": price,
        "rating": rating,
        "store": store!.toJson(),
      };
}

class StoreStore {
  final int id;
  final String name;
  final String address;
  final String slug;
  final String latitude;
  final String longtitude;
  final String image;
  final String phoneNumber;

  StoreStore({
    required this.id,
    required this.name,
    required this.address,
    required this.slug,
    required this.latitude,
    required this.longtitude,
    required this.image,
    required this.phoneNumber,
  });

  factory StoreStore.fromJson(Map<String, dynamic> json) => StoreStore(
        id: json["id"] ?? 0,
        name: json["name"] ?? '',
        address: json["address"] ?? '',
        slug: json["slug"] ?? '',
        latitude: json["latitude"] ?? '',
        longtitude: json["longtitude"] ?? '',
        image: json["image"] ?? '',
        phoneNumber: json["phone_number"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "address": address,
        "slug": slug,
        "latitude": latitude,
        "longtitude": longtitude,
        "image": image,
        "phone_number": phoneNumber,
      };
}
