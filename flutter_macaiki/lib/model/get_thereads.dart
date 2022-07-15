class GetThreads {
  Meta? meta;
  List<Data>? data;

  GetThreads({this.meta, this.data});

  GetThreads.fromJson(Map<String, dynamic> json) {
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
  int? isFollowed;

  Data({
    this.iD,
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
    this.isLiked,
    this.isFollowed,
  });

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
    isFollowed = json['isFollowed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['title'] = title;
    data['body'] = body;
    data['communityID'] = communityID;
    data['imageURL'] = imageURL;
    data['userID'] = userID;
    data['userName'] = userName;
    data['userProfession'] = userProfession;
    data['userProfilePictureURL'] = userProfilePictureURL;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['likesCount'] = likesCount;
    data['isLiked'] = isLiked;
    data['isFollowed'] = isFollowed;
    return data;
  }
}
