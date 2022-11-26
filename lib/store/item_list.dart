class ItemList {

  String _itemName;
  String _itemDesc;
  int _itemPrice;
  int _itemStock;

  //Setters And Getters
  String get itemName => _itemName;
  set itemName(String itemName) {
    _itemName = itemName;
  }

  String get itemDesc => _itemDesc;
  set itemDesc(String itemDesc) {
    _itemDesc = itemDesc;
  }

  int get itemPrice => _itemPrice;
  set itemPrice(int itemPrice) {
    _itemPrice = itemPrice;
  }

  int get itemStock => _itemStock;
  set itemStock(int itemStock) {
    _itemStock = itemStock;
  }

  //Constructors
  ItemList(this._itemName, this._itemDesc, this._itemPrice, this._itemStock);

  //Methods
  static final List<ItemList> _itemList =[
      ItemList('PROD1', 'PRODDESC1', 420, 10),

  ];





}