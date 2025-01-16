import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// fungsi membuat tombol
Column createButton(String label, IconData icon) {
  return Column(
    children: [
      Icon(
        icon,
        size: 35,
        color: Colors.blue,
      ),
      Container(
        // mengatur jarak teks dengan icon diatasnya
        padding: const EdgeInsets.only(top: 10),
        child: Text(label),
      ),
    ],
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // variabel gambar
    Widget expanded = Expanded(
      child: Image.asset(
        'images/pecel.jpg',
        // tinggi gambar, lebarnya memenuhi layar karena menggunakan Expanded
        height: 200,
        // gambar akan memenuhi layar
        fit: BoxFit.cover,
      ),
    );

    // variabel judul
    Widget titleSection = Container(
      // mengatur jarak dari kiri, atas, kanan, bawah
      padding: const EdgeInsets.fromLTRB(25, 25, 25, 5),
      child: const Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pecel Madiun Enak',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Jl. A. Yani No. 200, Pabelan'),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.blue,
          ),
          Text('150'),
        ],
      ),
    );

    // variabel barisan tombol
    Widget buttonSection = Container(
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          createButton('CALL', Icons.phone),
          createButton('ROUTE', Icons.near_me),
          createButton('SHARE', Icons.share),
          createButton('LIKE', Icons.thumb_up),
        ],
      ),
    );

    // variabel review
    Widget reviewSection = Container(
      // mengatur jarak dari semua sisi
      padding: const EdgeInsets.all(25),
      child: const Text(
          '''Pecel atau pecal adalah makanan yang menggunakan bumbu sambal kacang sebagai bahan utamanya yang dicampur dengan aneka jenis sayuran. Makanan ini populer terutama di wilayah DI Yogyakarta, Jawa Tengah, dan Jawa Timur. Meskipun asal kata dan daerah pecel belum diketahui secara pasti, namun dalam bahasa Jawa, pecel dapat diartikan sebagai 'tumbuk' atau 'dihancurkan dengan cara ditumbuk'. Konon pecel berasal dari daerah Ponorogo, Jawa Timur, karena sambal kacang yang digunakan dalam campuran pecel juga digunakan dalam bumbu sate khas Ponorogo.
          Nah, udah cukup ngiler dengan bahasan soal pecel, siang ini saya memilih pecel sebagai menu makan siang. Pecel Mbak Ira pun jadi pilihan saya kali ini. Saya memesan Nasi Pecel Ayam dan Nasi Pecel Empal. Isian pecel terdiri dari nasi dengan porsi yang cukup minimalis, aneka sayuran yang telah direbus, orek tempe, sambal kacang, peyek ebi, serundeng dan lauk ayam goreng ataupun daging empal goreng.
          Nasi Pecel Mbak Ira ini memiliki rasa yang cukup original menurut saya. Sambal kacangnya gurih dan engga pedes. Aneka sayurannya cukup variatif dengan tambahan topping yang bikin menu pecel ini bertambah nikmat meski dalam porsi yang engga banyak. Untuk ayam gorengnya empuk, berbumbu dan enak. Nah kalo empal gorengnya sih just so so ya...'''),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Food Review'),
        ),
        body: ListView(
          children: [
            //gambar,
            expanded,
            //judul,
            titleSection,
            //tombol,
            buttonSection,
            //review,
            reviewSection,
          ],
        ),
      ),
    );
  }
}