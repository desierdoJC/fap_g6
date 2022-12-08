
class Product {

  String _itemName;
  String _itemDesc;
  double _itemPrice;
  int _itemStock;
  String _itemURL;

  //Setters And Getters
  String get itemName => _itemName;
  set itemName(String itemName) {
    _itemName = itemName;
  }

  String get url => _itemURL;

  String get itemDesc => _itemDesc;
  set itemDesc(String itemDesc) {
    _itemDesc = itemDesc;
  }

  double get itemPrice => _itemPrice;
  set itemPrice(double itemPrice) {
    _itemPrice = itemPrice;
  }

  int get itemStock => _itemStock;
  set itemStock(int itemStock) {
    _itemStock = itemStock;
  }

  void decrementStock(){
    if(_itemStock>=1) _itemStock--;
  }

  //Constructors
  Product(this._itemName, this._itemDesc, this._itemPrice, this._itemStock, this._itemURL);

  factory Product.fromJSON(Map<String,dynamic> data){
    return Product(data['title'],
        data['description'],
        data['price'],
        data['stock'],
        data['thumbnail']);
  }


  static final List<Product> productList =[
    Product('CLAYMASK', 'CLAYMASK', 80, 50, 'https://ph-test-11.slatic.net/p/70eb27d50c37254f4cdbf40a0160bc68.jpg'),
    Product('LOTIONS', 'LOTIONS', 100, 80, 'https://www.aveeno.com.ph/sites/aveeno_ph_2/files/styles/product_image/public/product-images/aveeno-daily-moisturizing-lotion-354ml.jpg'),
    Product('Jump Ropes', 'PRODDESC1', 100, 30, 'https://pyxis.nymag.com/v1/imgs/920/e12/99a414943d94f12cc74426189a4938e92e.2x.rsquare.w600.jpg'),
    Product('Dumbbells', 'Insert description', 450, 20, 'https://cdn.shopify.com/s/files/1/0564/1283/1950/collections/1W9A3573_1_1_1400x.jpg?v=1621515174'),
    Product('Hydro Flask', 'Insert description', 50, 100, 'https://www.insidehook.com/wp-content/uploads/2021/04/hydroflask1.jpg?fit=1500%2C1000'),
    Product('Yoga mats', 'Insert description', 45, 150, 'https://www.sportsmnl.com/wp-content/uploads/2020/10/6714-1-450x450-1.jpg'),
    Product('Phone cases', 'Insert description', 20, 500, 'https://lzd-img-global.slatic.net/g/p/e00de8fcf6b6d92d27e3288c5402b927.jpg_2200x2200q80.jpg_.webp'),
    Product('T-shirts', 'Insert description', 10, 250, 'https://assets.vogue.com/photos/61b8faa39f520c634b44641a/3:4/w_1280%2Cc_limit/slide_6.jpg'),
    Product('Pants', 'Insert description',15, 250, 'https://storage.sg.content-cdn.io/cdn-cgi/image/width=542,height=723,quality=75,format=auto,fit=cover,g=top/in-resources/21e9ae3c-de72-4391-9c4a-c7af58447630/Images/ProductImages/Source/levis-mens-xx-chino-ezwaist-taper-pants-A10410035_01_Front.jpg'),
    Product('Totes and bags','Insert Desc', 5, 600, 'https://media.gq.com/photos/5ceeea351f8a4ee9adddadc4/16:9/w_2560%2Cc_limit/TotesLede3.jpg'),
    Product('Mugs', 'Insert description', 4, 1000,'https://images.summitmedia-digital.com/yummyph/images/2020/08/14/homescapes2.jpg'),
    Product('Shorts', 'Black Shorts', 420, 0, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD13', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD14', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD15', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
  ];
}