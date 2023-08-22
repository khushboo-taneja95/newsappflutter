class BiographyCategoryModel {
  bool? status;
  List<BiographyCategory>? biographycategory;

  BiographyCategoryModel({this.status, this.biographycategory});

  BiographyCategoryModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['BiographyCategory'] != null) {
      biographycategory = <BiographyCategory>[];
      json['BiographyCategory'].forEach((v) {
        biographycategory!.add(new BiographyCategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.biographycategory != null) {
      data['BiographyCategory'] = this.biographycategory!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BiographyCategory {
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

  BiographyCategory(
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

  BiographyCategory.fromJson(Map<String, dynamic> json) {
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
