class GetUserByToken {
  Meta? meta;
  Data? data;

  GetUserByToken({this.meta, this.data});

  GetUserByToken.fromJson(Map<String, dynamic> json) {
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
  String? email;
  String? username;
  String? name;
  String? imageUrl;
  String? profileImageURL;
  String? backgroundImageURL;
  String? bio;
  String? proffesion;
  String? role;
  bool? isBanned;
  String? createdAt;
  String? updatedAt;
  int? totalFollower;
  int? totalFollowing;

  Data(
      {this.iD,
      this.email,
      this.username,
      this.name,
      this.imageUrl,
      this.profileImageURL,
      this.backgroundImageURL,
      this.bio,
      this.proffesion,
      this.role,
      this.isBanned,
      this.createdAt,
      this.updatedAt,
      this.totalFollower,
      this.totalFollowing});

  Data.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    email = json['email'];
    username = json['username'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    profileImageURL = json['profileImageURL'];
    backgroundImageURL = json['backgroundImageURL'];
    bio = json['bio'];
    proffesion = json['proffesion'];
    role = json['role'];
    isBanned = json['isBanned'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    totalFollower = json['totalFollower'];
    totalFollowing = json['totalFollowing'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['email'] = email;
    data['username'] = username;
    data['name'] = name;
    data['imageUrl'] = imageUrl;
    data['profileImageURL'] = profileImageURL;
    data['backgroundImageURL'] = backgroundImageURL;
    data['bio'] = bio;
    data['proffesion'] = proffesion;
    data['role'] = role;
    data['isBanned'] = isBanned;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['totalFollower'] = totalFollower;
    data['totalFollowing'] = totalFollowing;
    return data;
  }
}
