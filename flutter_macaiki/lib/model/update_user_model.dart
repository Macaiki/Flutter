class UpdateUserModel {
  Meta? meta;
  Data? data;

  UpdateUserModel({this.meta, this.data});

  UpdateUserModel.fromJson(Map<String, dynamic> json) {
    meta = json['Meta'] != null ? Meta.fromJson(json['Meta']) : null;
    data = json['Data'] != null ? Data.fromJson(json['Data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (meta != null) {
      data['Meta'] = meta!.toJson();
    }
    if (this.data != null) {
      data['Data'] = this.data!.toJson();
    }
    return data;
  }
}

class Meta {
  String? message;
  int? code;

  Meta({this.message, this.code});

  Meta.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['code'] = code;
    return data;
  }
}

class Data {
  String? name;
  String? bio;
  String? profession;

  Data({this.name, this.bio, this.profession});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    bio = json['bio'];
    profession = json['profession'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['bio'] = bio;
    data['profession'] = profession;
    return data;
  }
}
