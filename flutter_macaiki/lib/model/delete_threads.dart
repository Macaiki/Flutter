class DeleteThreads {
  Meta? meta;
  Null? data;

  DeleteThreads({this.meta, this.data});

  DeleteThreads.fromJson(Map<String, dynamic> json) {
    meta = json['Meta'] != null ? new Meta.fromJson(json['Meta']) : null;
    data = json['Data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.meta != null) {
      data['Meta'] = this.meta!.toJson();
    }
    data['Data'] = this.data;
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
