import 'package:flutter/material.dart';
import 'package:stock_plastik/stock/stock.dart';

class EntryForm extends StatefulWidget {
  final Stock stock;
  EntryForm(this.stock);

  @override
  EntryFormState createState() => EntryFormState(this.stock);
}

//class controller
class EntryFormState extends State<EntryForm> {
  Stock stock;
  EntryFormState(this.stock);
  TextEditingController kodeController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController jenisController = TextEditingController();
  TextEditingController stockController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //kondisi
    if (stock != null) {
      namaController.text = stock.nama;
      stockController.text = stock.stock.toString();
    }
    //rubah
    return Scaffold(
        appBar: AppBar(
          title: stock == null ? Text('Tambah') : Text('ganti'),
          backgroundColor: Colors.yellow[600],
          leading: new IconButton(
            icon: new Icon(Icons.keyboard_arrow_left),
            onPressed: () {
              Navigator.pop(context, stock);
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
          child: ListView(
            children: <Widget>[
              // nama plastik
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: TextField(
                  controller: namaController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Nama plastik',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    //
                  },
                ),
              ),
              // stock
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: TextField(
                  controller: stockController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'stock',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    //
                  },
                ),
              ),
              //  button
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Row(
                  children: <Widget>[
                    // tombol simpan
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text(
                          'simpan',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          if (stock == null) {
                            // tambah data
                            stock = Stock(
                              namaController.text,
                              int.parse(stockController.text),
                            );
                          } else {
                            // Mengubah data

                            stock.nama = namaController.text;

                            stock.stock = int.parse(stockController.text);
                          }
                          // ke menu awal
                          Navigator.pop(context, stock);
                        },
                      ),
                    ),
                    Container(
                      width: 5.0,
                    ),
                    // tombol batal
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text(
                          'Batal',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
