import 'package:flutter/material.dart';

class TransaksiScreen extends StatefulWidget {
  @override
  _TransaksiScreenState createState() => _TransaksiScreenState();
}

class _TransaksiScreenState extends State<TransaksiScreen> {
  final TextEditingController kodeTransaksiController = TextEditingController();
  final TextEditingController namaPelangganController = TextEditingController();
  final TextEditingController jenisLayananController = TextEditingController();
  final TextEditingController tarifController = TextEditingController();
  final TextEditingController diskonController = TextEditingController();

  String hasilTransaksi = '';

  void _hitungTotal() {
    final String kodeTransaksi = kodeTransaksiController.text;
    final String namaPelanggan = namaPelangganController.text;
    final String jenisLayanan = jenisLayananController.text;
    final double tarif = double.tryParse(tarifController.text) ?? 0;
    final double diskon = double.tryParse(diskonController.text) ?? 0;

    final double total = tarif - (tarif * (diskon / 100));

    setState(() {
      hasilTransaksi = 
          'Kode Transaksi: $kodeTransaksi\n'
          'Nama Pelanggan: $namaPelanggan\n'
          'Jenis Layanan: $jenisLayanan\n'
          'Tarif: Rp${tarif.toStringAsFixed(2)}\n'
          'Diskon: $diskon%\n'
          'Total: Rp${total.toStringAsFixed(2)}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FORM'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: kodeTransaksiController,
              decoration: InputDecoration(labelText: 'Kode Transaksi'),
            ),
            TextField(
              controller: namaPelangganController,
              decoration: InputDecoration(labelText: 'Nama Pelanggan'),
            ),
            TextField(
              controller: jenisLayananController,
              decoration: InputDecoration(labelText: 'Jenis Layanan'),
            ),
            TextField(
              controller: tarifController,
              decoration: InputDecoration(labelText: 'Tarif'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: diskonController,
              decoration: InputDecoration(labelText: 'Diskon (%)'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _hitungTotal,
              child: Text('SUBMIT'),
            ),
            SizedBox(height: 20),
            Text(
              hasilTransaksi,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

