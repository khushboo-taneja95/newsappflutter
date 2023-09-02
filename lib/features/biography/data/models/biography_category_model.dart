class BiographyCategoryModel {
  bool? status;
  List<BiographyCategory>? biographycategory;

  BiographyCategoryModel({this.status, this.biographycategory});

  BiographyCategoryModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['BiographyCategory'] != null) {
      biographycategory = <BiographyCategory>[];
      json['BiographyCategory'].forEach((v) {
        biographycategory!.add(BiographyCategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (biographycategory != null) {
      data['BiographyCategory'] = biographycategory!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['hindi_name'] = hindiName;
    data['slug'] = slug;
    data['status'] = status;
    data['image'] = image;
    data['description'] = description;
    data['parent_id'] = parentId;
    data['subtitle'] = subtitle;
    data['dob'] = dob;
    data['parent'] = parent;
    data['field_type'] = fieldType;
    return data;
  }
}
