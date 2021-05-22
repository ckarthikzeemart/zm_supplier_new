class CatalogueProducts {
  int timeCreated;
  int timeUpdated;
  String sku;
  String supplierId;
  String productName;
  String urlProductName;
  String brand;
  ChargeBy chargeBy;
  String supplierProductCode;
  String description;
  List<String> categoryTags;
  String categoryPath;
  OrderBy orderBy;
  String status;
  List<String> tags;
  List<Images> images;
  String mainCategoryId;
  String categoryId;
//attributes
  String countryOfOrigin;
  List<Certifications> certifications;
  bool isFavourite;

  CatalogueProducts(
      this.timeCreated,
      this.timeUpdated,
      this.sku,
      this.supplierId,
      this.productName,
      this.urlProductName,
      this.brand,
      this.supplierProductCode,
      this.description,
      this.categoryTags,
      this.categoryPath,
      this.status,
      this.tags,
      this.mainCategoryId,
      this.categoryId,
      this.countryOfOrigin,
      this.isFavourite,
      this.certifications,
      this.images,
      this.chargeBy);

  CatalogueProducts.fromJson(Map<String, dynamic> json) {
    timeCreated = json['timeCreated'];
    timeUpdated = json['timeUpdated'];
    sku = json['sku'];
    supplierId = json['supplierId'];
    productName = json['productName'];
    urlProductName = json['urlProductName'];
    brand = json['brand'];
    supplierProductCode = json['supplierProductCode'];
    description = json['description'];
    categoryTags = List.from(json['categoryTags']);
    categoryPath = json['categoryPath'];
    status = json['status'];
    tags = List.from(json['tags']);
    mainCategoryId = json['mainCategoryId'];
    categoryId = json['categoryId'];
    countryOfOrigin = json['countryOfOrigin'];
    isFavourite = json['isFavourite'];
    chargeBy = json['chargeBy'] != null
        ? new ChargeBy.fromJson(json['chargeBy'])
        : null;

    // orderBy = json['orderBy'] != null
    //     ? new OrderBy.fromJson(json['orderBy'])
    //     : null;
    if (json['images'] != null) {
      images = new List<Images>();
      json['images'].forEach((v) {
        images.add(new Images.fromJson(v));
      });
    }

    if (json['certifications'] != null) {
      certifications = new List<Certifications>();
      json['certifications'].forEach((v) {
        certifications.add(new Certifications.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['timeCreated'] = this.timeCreated;
    data['timeUpdated'] = this.timeUpdated;
    data['sku'] = this.sku;
    data['supplierId'] = this.supplierId;
    data['productName'] = this.productName;
    data['urlProductName'] = this.urlProductName;
    data['brand'] = this.brand;
    data['supplierProductCode'] = this.supplierProductCode;
    data['description'] = this.description;
    data['categoryTags'] = this.categoryTags;
    data['categoryPath'] = this.categoryPath;
    data['status'] = this.status;
    data['tags'] = this.tags;
    data['mainCategoryId'] = this.mainCategoryId;
    data['categoryId'] = this.categoryId;
    data['countryOfOrigin'] = this.countryOfOrigin;
    data['isFavourite'] = this.isFavourite;
    data['chargeBy'] = this.chargeBy.toJson();
    // data['orderBy'] = this.orderBy.toJson();
    data['images'] = this.images;
    data['certifications'] = this.certifications;
  }
}

class ChargeBy {
  String unitSize;
  UnitSizeAlias unitSizeAlias;

  ChargeBy(this.unitSizeAlias, this.unitSize);

  ChargeBy.fromJson(Map<String, dynamic> json) {
    unitSize = json['unitSize'];
    unitSizeAlias = json['unitSizeAlias'] != null
        ? new UnitSizeAlias.fromJson(json['unitSizeAlias'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['unitSize'] = this.unitSize;
    if (this.unitSizeAlias != null) {
      data['unitSizeAlias'] = this.unitSizeAlias.toJson();
    }
  }
}

class UnitSizeAlias {
  String unitSize;
  String shortName;
  bool isDecimalAllowed;

  UnitSizeAlias.fromJson(Map<String, dynamic> json) {
    unitSize = json['unitSize'];
    shortName = json['shortName'];
    isDecimalAllowed = json['isDecimalAllowed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['unitSize'] = this.unitSize;
    data['shortName'] = this.shortName;
    data['isDecimalAllowed'] = this.isDecimalAllowed;

    return data;
  }
}

class OrderBy {
  String unitSize;
  UnitSizeAlias unitSizeAlias;
  int unitQuantity;
  bool isDefault;

  OrderBy.fromJson(Map<String, dynamic> json) {
    unitSize = json['unitSize'];
    unitSizeAlias = json['unitSizeAlias'];
    unitQuantity = json['unitQuantity'];
    isDefault = json['isDefault'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['unitSize'] = this.unitSize;
    data['unitSizeAlias'] = this.unitSizeAlias;
    data['unitQuantity'] = this.unitQuantity;
    data['isDefault'] = this.isDefault;

    return data;
  }
}

class Images {
  String imageURL;
  List<String> imageFileNames;

  Images(this.imageFileNames, this.imageURL);

  Images.fromJson(Map<String, dynamic> json) {
    imageURL = json['imageURL'];
    imageFileNames = List.from(json['imageFileNames']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageURL'] = this.imageURL;
    data['imageFileNames'] = this.imageFileNames;

    return data;
  }
}

class Certifications {
  String id;
  String name;

  Certifications(this.name, this.id);
  Certifications.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}