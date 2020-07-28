import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Weird-Ass food'),
      ),
      body: ListView(
        children: <Widget>[
          Foods(
            nama: "Beer Anak Kos-an",
            deskripsi: "Mabok gak harus mahal",
            stok: "masih banyak",
            gambar: "images/brmn.jpg",
          ),
          Foods(
            nama: "Sumber Corona",
            deskripsi: "Menewaskan 656,494 penduduk bumi",
            stok: "tinggal dikit",
            gambar: "images/bat.jpg",
          ),
          Foods(
            nama: "Sumber Corona 2",
            deskripsi: "Berpartisipasi dalam Genosida terbesar di dekade ini",
            stok: "masih ada",
            gambar: "images/ret.jpg",
          ),
          Foods(
            nama: "Sop anak Jahannam",
            deskripsi: "Dibawa dari jahannam oleh buwung Ababil",
            stok: "tinggal dikit",
            gambar: "images/gah.jpg",
          ),
          Foods(
            nama: "Klepon tydaq islamy",
            deskripsi: "Makanan paling kontroversial bulan ini",
            stok: "masih ada",
            gambar: "images/klep.jpg",
          ),
        ],
      ),
    );
  }
}

final baseTextStyle = const TextStyle(color: Colors.white, fontFamily: 'arial');
final bigHeaderTextStyle =
    baseTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.bold);
final descTextStyle =
    baseTextStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.w400);
final footerTextStyle =
    baseTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w400);

class Foods extends StatelessWidget {
  final String nama, deskripsi, stok, gambar;

  const Foods({Key key, this.nama, this.deskripsi, this.stok, this.gambar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 280.0,
      child: Stack(
        children: <Widget>[
          backgroundImage(gambar),
          Container(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: topContent(nama, deskripsi, stok),
              ))
        ],
      ),
    );
  }

  backgroundImage(String gambar) {
    return new Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black54.withOpacity(0.5), BlendMode.luminosity),
            image: AssetImage(gambar)),
      ),
    );
  }

  topContent(String nama, String deskripsi, String stok) {
    return new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            nama,
            style: bigHeaderTextStyle,
          ),
          Text(
            deskripsi,
            style: descTextStyle,
          ),
          Container(
            height: 2.0,
            width: 100.0,
            color: Colors.blueAccent,
          ),
          Text(
            stok,
            style: footerTextStyle,
          ),
        ],
      ),
    );
  }
}
