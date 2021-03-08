/**
 * Created by RajPrudhviMarella on 08/Mar/2021.
 */

class CreateOrderModel {
  int timeDelivered;
  List<Products> products=[];
  String deliveryInstruction;
  String notes;

  CreateOrderModel(
      {this.timeDelivered,
        this.products,
        this.deliveryInstruction,
        this.notes});

  CreateOrderModel.fromJson(Map<String, dynamic> json) {
    timeDelivered = json['timeDelivered'];
    if (json['products'] != null) {
      products = new List<Products>();
      json['products'].forEach((v) {
        products.add(new Products.fromJson(v));
      });
    }
    deliveryInstruction = json['deliveryInstruction'];
    notes = json['notes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['timeDelivered'] = this.timeDelivered;
    if (this.products != null) {
      data['products'] = this.products.map((v) => v.toJson()).toList();
    }
    data['deliveryInstruction'] = this.deliveryInstruction;
    data['notes'] = this.notes;
    return data;
  }
}

class Products {
  String sku;
  int quantity;
  String unitSize;
  String notes;

  Products({this.sku, this.quantity, this.unitSize, this.notes});

  Products.fromJson(Map<String, dynamic> json) {
    sku = json['sku'];
    quantity = json['quantity'];
    unitSize = json['unitSize'];
    notes = json['notes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sku'] = this.sku;
    data['quantity'] = this.quantity;
    data['unitSize'] = this.unitSize;
    data['notes'] = this.notes;
    return data;
  }
}