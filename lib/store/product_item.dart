
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

  //Constructors
  Product(this._itemName, this._itemDesc, this._itemPrice, this._itemStock, this._itemURL);

  factory Product.fromJSON(Map<String,dynamic> data){
    return Product(data['title'],
        data['description'],
        data['price'],
        data['stock'],
        data['thumbnail']);
  }

  //Methods
  static final List<Product> productList =[
    Product('PROD1', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD2', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD3', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD4', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD5', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD6', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD7', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD8', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD9', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD10', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD11', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD12', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD13', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD14', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD15', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD16', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD17', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD18', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD19', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD20', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD21', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD22', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
    Product('PROD23', 'PRODDESC1', 420, 10, 'https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
  ];
}