class GetAllUserModel {
  Meta? meta;
  List<Data>? data;

  GetAllUserModel({this.meta, this.data});

  GetAllUserModel.fromJson(Map<String, dynamic> json) {
    meta = json['Meta'] != null ? Meta.fromJson(json['Meta']) : null;
    if (json['Data'] != null) {
      data = <Data>[];
      json['Data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (meta != null) {
      data['Meta'] = meta!.toJson();
    }
    if (this.data != null) {
      data['Data'] = this.data!.map((v) => v.toJson()).toList();
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
  int? iD;
  String? username;
  String? name;
  String? profileImageURL;
  int? isFollowed;
  int? isMine;

  Data(
      {this.iD,
      this.username,
      this.name,
      this.profileImageURL,
      this.isFollowed,
      this.isMine});

  Data.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    username = json['username'];
    name = json['name'];
    profileImageURL = json['profileImageURL'];
    isFollowed = json['isFollowed'];
    isMine = json['isMine'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['username'] = username;
    data['name'] = name;
    data['profileImageURL'] = profileImageURL;
    data['isFollowed'] = isFollowed;
    data['isMine'] = isMine;
    return data;
  }
}
