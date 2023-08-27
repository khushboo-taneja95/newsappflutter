class biographymodel {
  bool? status;
  List<Categories>? categories;

  biographymodel({this.status, this.categories});

  biographymodel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  String? id;
  String? name;
  String? hindiName;
  String? slug;
  String? status;
  String? image;
  String? description;
  String? parentId;
  String? subtitle;
  String? dob;
  String? parent;
  String? fieldType;

  Categories(
      {this.id,
        this.name,
        this.hindiName,
        this.slug,
        this.status,
        this.image,
        this.description,
        this.parentId,
        this.subtitle,
        this.dob,
        this.parent,
        this.fieldType});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    hindiName = json['hindi_name'];
    slug = json['slug'];
    status = json['status'];
    image = json['image'];
    description = json['description'];
    parentId = json['parent_id'];
    subtitle = json['subtitle'];
    dob = json['dob'];
    parent = json['parent'];
    fieldType = json['field_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['hindi_name'] = this.hindiName;
    data['slug'] = this.slug;
    data['status'] = this.status;
    data['image'] = this.image;
    data['description'] = this.description;
    data['parent_id'] = this.parentId;
    data['subtitle'] = this.subtitle;
    data['dob'] = this.dob;
    data['parent'] = this.parent;
    data['field_type'] = this.fieldType;
    return data;
  }
}
