class AyatResponse {
  String? ar;
  String? id;
  String? nomor;
  String? tr;

  AyatResponse({this.ar, this.id, this.nomor, this.tr});

  AyatResponse.fromJson(Map<String, dynamic> json) {
    ar = json['ar'];
    id = json['id'];
    nomor = json['nomor'];
    tr = json['tr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ar'] = this.ar;
    data['id'] = this.id;
    data['nomor'] = this.nomor;
    data['tr'] = this.tr;
    return data;
  }
}
