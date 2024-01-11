class MenuItem {
  final String name;
  final String photo;
  final String? pageName;
  final double? price;

  MenuItem({required this.name, required this.photo, this.price, this.pageName});

}

class Order {
  var items = <MenuItem>[];

  void addItem(MenuItem item){
    items.add(item);
  }

  double getTotalPrice() {
    return items.fold(0, (sum, item) => sum + item.price!);
  }

}

