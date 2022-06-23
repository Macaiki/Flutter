class GetThreads {
  Meta? meta;
  List<Data>? data;

  GetThreads({this.meta, this.data});

  GetThreads.fromJson(Map<String, dynamic> json) {
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
  String? title;
  String? body;
  int? topicID;
  String? imageURL;
  int? userID;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.iD,
      this.title,
      this.body,
      this.topicID,
      this.imageURL,
      this.userID,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    title = json['title'];
    body = json['body'];
    topicID = json['topicID'];
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
    data['topicID'] = this.topicID;
    data['imageURL'] = this.imageURL;
    data['userID'] = this.userID;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
