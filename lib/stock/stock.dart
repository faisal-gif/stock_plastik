class Stock {
  int _id;
  String _nama;
  int _stock;

  int get id => _id;
  String get nama => this._nama;
  set nama(String value) => this._nama = value;
  get stock => this._stock;
  set stock(value) => this._stock = value;

  // konstruktor versi 1
  Stock(this._nama, this._stock);

  // konstruktor versi 2: konversi dari Map ke Item
  Stock.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._nama = map['nama'];
    this._stock = map['stock'];
  }

  // konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['nama'] = this._nama;
    map['stock'] = this._stock;
    return map;
  }
}
