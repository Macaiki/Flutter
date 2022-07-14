class CreateThreads {
  Meta? meta;
  Data? data;

  CreateThreads({this.meta, this.data});

  CreateThreads.fromJson(Map<String, dynamic> json) {
    meta = json['Meta'] != null ? new Meta.fromJson(json['Meta']) : null;
    data = json['Data'] != null ? new Data.fromJson(json['Data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.meta != null) {
      data['Meta'] = this.meta!.toJson();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['code'] = this.code;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['title'] = this.title;
    data['body'] = this.body;
    data['communityID'] = this.communityID;
    data['imageURL'] = this.imageURL;
    data['userID'] = this.userID;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
