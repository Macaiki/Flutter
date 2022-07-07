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
  int? communityID;
  String? imageURL;
  int? userID;
  String? userName;
  String? userProfession;
  String? userProfilePictureURL;
  String? createdAt;
  String? updatedAt;
  int? likesCount;
  int? isLiked;

  Data(
      {this.iD,
      this.title,
      this.body,
      this.communityID,
      this.imageURL,
      this.userID,
      this.userName,
      this.userProfession,
      this.userProfilePictureURL,
      this.createdAt,
      this.updatedAt,
      this.likesCount,
      this.isLiked});

  Data.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    title = json['title'];
    body = json['body'];
    communityID = json['communityID'];
    imageURL = json['imageURL'];
    userID = json['userID'];
    userName = json['userName'];
    userProfession = json['userProfession'];
    userProfilePictureURL = json['userProfilePictureURL'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    likesCount = json['likesCount'];
    isLiked = json['isLiked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['title'] = this.title;
    data['body'] = this.body;
    data['communityID'] = this.communityID;
    data['imageURL'] = this.imageURL;
    data['userID'] = this.userID;
    data['userName'] = this.userName;
    data['userProfession'] = this.userProfession;
    data['userProfilePictureURL'] = this.userProfilePictureURL;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['likesCount'] = this.likesCount;
    data['isLiked'] = this.isLiked;
    return data;
  }
}
