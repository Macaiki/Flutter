class GetAllUserModel {
  Meta? meta;
  List<Data>? data;

  GetAllUserModel({this.meta, this.data});

  GetAllUserModel.fromJson(Map<String, dynamic> json) {
    meta = json['Meta'] != null ? new Meta.fromJson(json['Meta']) : null;
    if (json['Data'] != null) {
      data = <Data>[];
      json['Data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.meta != null) {
      data['Meta'] = this.meta!.toJson();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['code'] = this.code;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['username'] = this.username;
    data['name'] = this.name;
    data['profileImageURL'] = this.profileImageURL;
    data['isFollowed'] = this.isFollowed;
    data['isMine'] = this.isMine;
    return data;
  }
}
