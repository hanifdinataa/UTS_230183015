// import 'package:flutter/material.dart';
// import '../models/nilai.dart';

// class NilaiPage extends StatefulWidget {
//   @override
//   _NilaiPageState createState() => _NilaiPageState();
// }

// class _NilaiPageState extends State<NilaiPage> {
//   final _noBPController = TextEditingController();
//   final _namaController = TextEditingController();
//   final _jenisKelaminController = TextEditingController();
//   final _nilaiAngkaController = TextEditingController();
//   final _nilaiHurufController = TextEditingController();
//   final _nilaiMutuController = TextEditingController();
//   final _keteranganController = TextEditingController();

//    String hasil =""; // variabel untuk menyimpan hasil yang akan di tampilkan

//   void displayNilai() {
//     String noBP = _noBPController.text;
//     String nama = _namaController.text;
//     String jenisKelamin = _jenisKelaminController.text;
//     double nilaiAngka = double.tryParse(_nilaiAngkaController.text) ?? 0.0;
//     String nilaiHuruf = _nilaiHurufController.text;
//     double nilaiMutu = double.tryParse(_nilaiMutuController.text) ?? 0.0;
//     String keterangan = _keteranganController.text;

//     Nilai nilai = Nilai(
//       noBP: noBP,
//       nama: nama,
//       jenisKelamin: jenisKelamin,
//       nilaiAngka: nilaiAngka,
//       nilaiHuruf: nilaiHuruf,
//       nilaiMutu: nilaiMutu,
//       keterangan: keterangan,
//     );

//     setState(() {
//       hasil =
//           "No BP: ${nilai.noBP}\n    Nama: ${nilai.nama}\n  Jenis Kelamin: ${nilai.jenisKelamin}\n    Nilai Angka: ${nilai.nilaiAngka}\n    Nilai Huruf: ${nilai.nilaiHuruf}\n    Nilai Mutu: ${nilai.nilaiMutu}\n    Keterangan: ${nilai.keterangan}";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("UTS 2301083015 A")),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),


//         child: Column(
//           children: [
//             TextField(
//               controller: _noBPController,
//               decoration: InputDecoration(labelText: "No BP"),
//             ),
//             TextField(
//               controller: _namaController,
//               decoration: InputDecoration(labelText: "Nama"),
//             ),

//             TextField(
//               controller: _jenisKelaminController,
//               decoration: InputDecoration(labelText: "Jenis Kelamin"),
//             ),


//             TextField(
//               controller: _nilaiAngkaController,
//               decoration: InputDecoration(labelText: "Nilai Angka"),
//               keyboardType: TextInputType.number,
//             ),
//             TextField(
//               controller: _nilaiHurufController,
//               decoration: InputDecoration(labelText: "Nilai Huruf"),
//             ),
//             TextField(
//               controller: _nilaiMutuController,
//               decoration: InputDecoration(labelText: "Nilai Mutu"),
//               keyboardType: TextInputType.number,
//             ),
//             TextField(
//               controller: _keteranganController,
//               decoration: InputDecoration(labelText: "Keterangan"),
//             ),
//             SizedBox(height: 20),


//             ElevatedButton(
//               onPressed: displayNilai,
//               child: Text("SUBMIT"),
//             ),

            
//             SizedBox(height: 20),
//             Text( hasil, style: TextStyle(fontSize: 18)),
//           ],
//         ),
//       ),
//     );
//   }
// }

