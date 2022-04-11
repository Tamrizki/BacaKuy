class SurahResponse {
  String? arti;
  String? asma;
  String? audio;
  int? ayat;
  String? keterangan;
  String? nama;
  String? nomor;
  String? rukuk;
  String? type;
  String? urut;

  SurahResponse(
      {this.arti,
      this.asma,
      this.audio,
      this.ayat,
      this.keterangan,
      this.nama,
      this.nomor,
      this.rukuk,
      this.type,
      this.urut});

  SurahResponse.fromJson(Map<String, dynamic> json) {
    arti = json['arti'];
    asma = json['asma'];
    audio = json['audio'];
    ayat = json['ayat'];
    keterangan = json['keterangan'];
    nama = json['nama'];
    nomor = json['nomor'];
    rukuk = json['rukuk'];
    type = json['type'];
    urut = json['urut'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['arti'] = this.arti;
    data['asma'] = this.asma;
    data['audio'] = this.audio;
    data['ayat'] = this.ayat;
    data['keterangan'] = this.keterangan;
    data['nama'] = this.nama;
    data['nomor'] = this.nomor;
    data['rukuk'] = this.rukuk;
    data['type'] = this.type;
    data['urut'] = this.urut;
    return data;
  }
}