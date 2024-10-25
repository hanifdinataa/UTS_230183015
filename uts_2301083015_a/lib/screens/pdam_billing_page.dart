import 'package:flutter/material.dart';
import '../models/pdam.dart';

class PdamBillingPage extends StatefulWidget {
  @override
  _PdamBillingPageState createState() => _PdamBillingPageState();
}

class _PdamBillingPageState extends State<PdamBillingPage> {
  final _kodePembayaranController = TextEditingController();
  final _namaPelangganController = TextEditingController();
  final _meterBulanIniController = TextEditingController();
  final _meterBulanLaluController = TextEditingController();
  final _tanggalController = TextEditingController(); // Controller untuk tanggal

  String selectedJenisPelanggan = 'GOLD'; // Default option
  String result = "";

  void calculateBill() {
    String kodePembayaran = _kodePembayaranController.text;
    String namaPelanggan = _namaPelangganController.text;
    int meterBulanIni = int.tryParse(_meterBulanIniController.text) ?? 0;
    int meterBulanLalu = int.tryParse(_meterBulanLaluController.text) ?? 0;

    // Mengubah string tanggal menjadi DateTime
    DateTime tanggal = DateTime.parse(_tanggalController.text);

    Pdam pdam = Pdam(
      kodePembayaran: kodePembayaran,
      namaPelanggan: namaPelanggan,
      jenisPelanggan: selectedJenisPelanggan,
      tanggal: tanggal,
      meterBulanIni: meterBulanIni,
      meterBulanLalu: meterBulanLalu,
    );

    pdam.calculateTotalBayar();

    setState(() {
      result =
          "Nama: ${pdam.namaPelanggan}\nKode Pembayaran: ${pdam.kodePembayaran}\nJenis Pelanggan: ${pdam.jenisPelanggan}\nMeter Pakai: ${pdam.calculateMeterPakai()} m³\nTotal Bayar: Rp ${pdam.totalBayar}";
    });
  }

  Future<void> pilihTanggal(BuildContext context) async {
    DateTime? tanggalPilih = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (tanggalPilih != null) {
      setState(() {
        _tanggalController.text = tanggalPilih.toLocal().toString().split(' ')[0]; // Format YYYY-MM-DD
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("UTS 2301083015 A - PDAM")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _kodePembayaranController,
              decoration: InputDecoration(labelText: "Kode Pembayaran"),
            ),
            TextField(
              controller: _namaPelangganController,
              decoration: InputDecoration(labelText: "Nama Pelanggan"),
            ),
            // Dropdown untuk jenis pelanggan
            DropdownButtonFormField<String>(
              value: selectedJenisPelanggan,
              decoration: InputDecoration(labelText: "Jenis Pelanggan"),
              items: ['GOLD', 'SILVER', 'UMUM']
                  .map((jenis) => DropdownMenuItem(
                        value: jenis,
                        child: Text(jenis),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedJenisPelanggan = value!;
                });
              },
            ),
            // Input untuk tanggal
            TextField(
              controller: _tanggalController,
              readOnly: true,
              decoration: InputDecoration(labelText: "Tanggal"),
              onTap: () => pilihTanggal(context), // Menampilkan pemilih tanggal saat diklik
            ),
            TextField(
              controller: _meterBulanIniController,
              decoration: InputDecoration(labelText: "Meter Bulan Ini"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _meterBulanLaluController,
              decoration: InputDecoration(labelText: "Meter Bulan Lalu"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateBill,
              child: Text("Hitung Total Bayar"),
            ),
            SizedBox(height: 20),
            Text(result, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
