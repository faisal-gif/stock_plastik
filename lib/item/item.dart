class Item {
  int _id;
  String kode_plastik;
  String _nama;
  int _harga;
  int _stock;

  int get id => _id;
  String get kode => this.kode_plastik;
  set kode(String value) => this.kode_plastik = value;
  String get nama => this._nama;
  set nama(String value) => this._nama = value;
  get harga => this._harga;
  set harga(value) => this._harga = value;
  get stock => this._stock;
  set stock(value) => this._stock = value;

  // konstruktor  1
  Item(this.kode_plastik, this._nama, this._harga, this._stock);

  // konstruktor  2
  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this.kode_plastik = map['kode'];
    this._nama = map['nama'];
    this._harga = map['harga'];
    this._stock = map['stock'];
  }

  // konversi Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['kode'] = this.kode_plastik;
    map['nama'] = this._nama;
    map['harga'] = this._harga;
    map['stock'] = this._stock;
    return map;
  }
}
