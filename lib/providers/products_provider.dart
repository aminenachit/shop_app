import 'package:flutter/cupertino.dart';

import '../models/products_model.dart';

class ProductsProvider with ChangeNotifier {
  List<ProductModel> get getProducts {
    return _productsList;
  }

  List<ProductModel> get getOnSaleProducts {
    return _productsList.where((element) => element.isOnSale).toList();
  }

  ProductModel findProdById(String productId) {
    return _productsList.firstWhere((element) => element.id == productId);
  }

  List<ProductModel> findByCategory(String categoryName) {
    List<ProductModel> _categoryList = _productsList
        .where((element) => element.productCategoryName
            .toLowerCase()
            .contains(categoryName.toLowerCase()))
        .toList();
    return _categoryList;
  }

  static final List<ProductModel> _productsList = [
    ProductModel(
      id: 'iphone x',
      title: 'iphone x',
      price: 599,
      salePrice: 399,
      imageUrl:
          'https://www.transparentpng.com/download/-iphone-x/DTctGB-iphone-transparent-shop.png',
      productCategoryName: 'Phone',
      isOnSale: true,
      isPiece: true,
    ),
    ProductModel(
      id: 'samsung galaxy note 20 ultra',
      title: 'samsung galaxy note 20 ultra',
      price: 700,
      salePrice: 700,
      imageUrl:
          'https://lh3.googleusercontent.com/wLMMF-1FBp_Lescqu9T6UC2kHPfnmGzUGAZ7GzjXqOgs4qcSWIe93xh9Oe-YuQadVhw=w2400',
      productCategoryName: 'Phone',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'OnePlus 10 Pro',
      title: 'OnePlus 10 Pro',
      price: 999,
      salePrice: 759,
      imageUrl:
          'https://static.jazp.com/uploads_700x600/202201/1686faa09d34eafa4621d62c5ac5799d.jpeg',
      productCategoryName: 'Phone',
      isOnSale: true,
      isPiece: false,
    ),
    ProductModel(
      id: 'iPhone 14 Pro Max',
      title: 'iPhone 14 Pro Max',
      price: 1399,
      salePrice: 1399,
      imageUrl:
          'https://pcsoft.fr/un-euro-de-plus/hiver-2022/apple/iphone-14-pro-max/06_large.png',
      productCategoryName: 'Phone',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Samsung Galaxy S23 Ultra',
      title: 'Samsung Galaxy S23 Ultra',
      price: 1199,
      salePrice: 1199,
      imageUrl:
          'https://didongmango.com/images/products/2023/02/02/large/image-removebg-preview_638109032737367137_1675317282.png',
      productCategoryName: 'Phone',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Google Pixel 7',
      title: 'Google Pixel 7',
      price: 899,
      salePrice: 749,
      imageUrl:
          'https://images.frandroid.com/wp-content/uploads/2022/05/google-pixel-7-frandroid-2022.png',
      productCategoryName: 'Phone',
      isOnSale: true,
      isPiece: false,
    ),
    ProductModel(
      id: 'Huawei P50 Pro',
      title: 'Huawei P50 Pro',
      price: 1099,
      salePrice: 1099,
      imageUrl:
          'https://leprixmaroc.net/egarots/2022/08/huawei-p50-pro-prix-maroc-800x800.png',
      productCategoryName: 'Phone',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Xiaomi Mi 13',
      title: 'Xiaomi Mi 13',
      price: 699,
      salePrice: 699,
      imageUrl:
          'https://i01.appmifile.com/v1/MI_18455B3E4DA706226CF7535A58E875F0267/pms_1678185400.07679015!800x800!85.png',
      productCategoryName: 'Phone',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'Oppo Find X4 Pro',
      title: 'Oppo Find X4 Pro',
      price: 1099,
      salePrice: 899,
      imageUrl:
          'https://xprs.s3.eu-west-3.amazonaws.com/media/product_images/Oppo_Find_X5_Pro_Black-1.png',
      productCategoryName: 'Phone',
      isOnSale: true,
      isPiece: false,
    ),
    ProductModel(
      id: 'Dell XPS 13',
      title: 'Dell XPS 13',
      price: 1049,
      salePrice: 1049,
      imageUrl:
          'https://puresolutions.ma/wp-content/uploads/2021/11/dell-xps-13-2020.png',
      productCategoryName: 'laptops',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'HP Pavilion x360',
      title: 'HP Pavilion x360',
      price: 699,
      salePrice: 649,
      imageUrl:
          'https://evotrading.ma/wp-content/uploads/2021/04/pc-portable-hp-pavilion-x360-14-dw1003nk-i5-1135g7-8gb-256go-ssd-2q9f4ea.png',
      productCategoryName: 'laptops',
      isOnSale: true,
      isPiece: false,
    ),
    ProductModel(
      id: 'Razer Blade 15',
      title: 'Razer Blade 15',
      price: 1699,
      salePrice: 1699,
      imageUrl:
          'https://images.frandroid.com/wp-content/uploads/2020/09/razer-blade-15-2020-frandroid.png',
      productCategoryName: 'laptops',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Apple AirPods',
      title: 'Apple AirPods',
      price: 249,
      salePrice: 149,
      imageUrl:
          'https://help.apple.com/assets/6305096F029A2032C16D3326/63050972029A2032C16D332F/fr_FR/8502c82d6af341b14307f5c11374bbb6.png',
      productCategoryName: 'earphones',
      isOnSale: true,
      isPiece: true,
    ),
    ProductModel(
      id: 'Galaxy Buds Pro ',
      title: 'Galaxy Buds Pro ',
      price: 199,
      salePrice: 199,
      imageUrl:
          'https://c1.lestechnophiles.com/images.frandroid.com/wp-content/uploads/2022/08/samsung-galaxy-buds-2-pro-officiel-frandroid-2022.png',
      productCategoryName: 'earphones',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Sony WH-1000XM4',
      title: 'Sony WH-1000XM4',
      price: 349,
      salePrice: 349,
      imageUrl:
          'https://i0.wp.com/weststreetphoto.com/wp-content/uploads/2021/03/d32.png?fit=1000%2C1000&ssl=1',
      productCategoryName: 'headphones',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'HyperX Cloud II',
      title: 'HyperX Cloud II',
      price: 190,
      salePrice: 170,
      imageUrl:
          'https://www.1form-store.ma/content/images/thumbs/0009940_hyperx-cloud-ii-wireless-rouge.png',
      productCategoryName: 'headphones',
      isOnSale: true,
      isPiece: false,
    ),
    ProductModel(
      id: 'Skagen Falster 3',
      title: 'Skagen Falster 3',
      price: 295,
      salePrice: 219,
      imageUrl:
          'https://c2.lestechnophiles.com/images.frandroid.com/wp-content/uploads/2022/01/skagen-falster-gen-6-frandroid-2022.png',
      productCategoryName: 'smartwatch',
      isOnSale: true,
      isPiece: true,
    ),
    ProductModel(
      id: 'Apple Watch 7',
      title: 'Apple Watch 7',
      price: 399,
      salePrice: 399,
      imageUrl:
          'https://gait.com.qa/media/catalog/product/c/o/conf-wtch7-stralu-strsp__1.png?quality=100&fit=bounds&height=700&width=700',
      productCategoryName: 'smartwatch',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Galaxy Watch 4',
      title: 'Galaxy Watch 4',
      price: 249,
      salePrice: 249,
      imageUrl:
          'https://images.samsung.com/is/image/samsung/p6pim/n_africa/2108/gallery/n-africa-galaxy-watch4-sm-r860nzdamea-482280559',
      productCategoryName: 'smartwatch',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'Garmin Forerunner 945 LTE',
      title: 'Garmin Forerunner 945 LTE',
      price: 649.99,
      salePrice: 649.99,
      imageUrl:
          'https://ph.garmin.com/m/ph/g/products/Forerunner945-black-image-01.png',
      productCategoryName: 'smartwatch',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Samsung QN90A Neo QLED TV',
      title: 'Samsung QN90A Neo QLED TV',
      price: 2199,
      salePrice: 2199,
      imageUrl:
          'https://images.samsung.com/is/image/samsung/p6pim/in/qa98qn90aakxxl/gallery/in-neo-qled-qn90a-384003-qa98qn90aakxxl-thumb-530329383',
      productCategoryName: 'smart tv',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Sony X800H',
      title: 'Sony X800H',
      price: 749,
      salePrice: 749,
      imageUrl:
          'https://www.sony.com.pa/image/f2c6487074ea1880e9a080c798d01ee5?fmt=png-alpha&wid=660&hei=660',
      productCategoryName: 'smart tv',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'LG OLED C1 Series',
      title: 'LG OLED C1 Series',
      price: 2099,
      salePrice: 1999,
      imageUrl:
          'https://electrobousfiha.com/16314-large_default/smart-tv-oled-55p-4k-ultra-hd-lg.jpg',
      productCategoryName: 'smart tv',
      isOnSale: true,
      isPiece: true,
    ),
    ProductModel(
      id: 'Vizio V-Series',
      title: 'Vizio V-Series',
      price: 329,
      salePrice: 329,
      imageUrl:
          'https://www.kroger.com/product/images/large/front/0084522601946',
      productCategoryName: 'smart tv',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'Audio-Technica ATH',
      title: 'Audio-Technica ATH',
      price: 149,
      salePrice: 109,
      imageUrl:
          'https://www.altomusic.com/media/catalog/product/cache/08b211178b786c208a26d1082e9af038/image/1032068e315/audio-technica-ath-m50x-professional-monitor-headphones.png',
      productCategoryName: 'headphones',
      isOnSale: true,
      isPiece: true,
    ),
    ProductModel(
      id: 'LG V80 ThinQ',
      title: 'LG V80 ThinQ',
      price: 899,
      salePrice: 899,
      imageUrl:
          'https://images.frandroid.com/wp-content/uploads/2019/04/lg-g8-thinq-2019-frandroid.png',
      productCategoryName: 'Phone',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'oneplus 9 pro',
      title: 'oneplus 9 pro',
      price: 799,
      salePrice: 699,
      imageUrl:
          'https://oasis.opstatics.com/content/dam/oasis/page/2021/9-series/spec-image/9-pro/Morning%20mist-gallery.png',
      productCategoryName: 'Phone',
      isOnSale: true,
      isPiece: true,
    ),
    ProductModel(
      id: 'Sennheiser Momentum True Wireless 2',
      title: 'Sennheiser Momentum True Wireless 2',
      price: 299.95,
      salePrice: 299.95,
      imageUrl:
          'https://images.frandroid.com/wp-content/uploads/2020/05/sennheiser-momentum-true-wireless-2-frandroid-2020.png',
      productCategoryName: 'earphones',
      isOnSale: false,
      isPiece: false,
    ),
  ];
}
