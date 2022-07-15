class DeleteThreads {
  Meta? meta;
  // ignore: prefer_void_to_null, unnecessary_question_mark
  Null? data;

  DeleteThreads({this.meta, this.data});

  DeleteThreads.fromJson(Map<String, dynamic> json) {
    meta = json['Meta'] != null ? Meta.fromJson(json['Meta']) : null;
    data = json['Data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (meta != null) {
      data['Meta'] = meta!.toJson();
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['code'] = code;
    return data;
  }
}
