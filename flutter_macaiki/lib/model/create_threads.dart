class CreateThreads {
  Meta? meta;
  Data? data;

  CreateThreads({this.meta, this.data});

  CreateThreads.fromJson(Map<String, dynamic> json) {
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
  int? iD;
  String? title;
  String? body;
  int? communityID;
  String? imageURL;
  int? userID;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.iD,
      this.title,
      this.body,
      this.communityID,
      this.imageURL,
      this.userID,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    title = json['title'];
    body = json['body'];
    communityID = json['communityID'];
    imageURL = json['imageURL'];
    userID = json['userID'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['title'] = title;
    data['body'] = body;
    data['communityID'] = communityID;
    data['imageURL'] = imageURL;
    data['userID'] = userID;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
