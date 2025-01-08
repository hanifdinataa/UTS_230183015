

// class Pdam {              /// class untuk variabel yang akan menyimpan data
//   String kodePembayaran;
//   String namaPelanggan;
//   String jenisPelanggan;
//   DateTime tanggal;
//   int meterBulanIni;
//   int meterBulanLalu;
//   int totalBayar = 0;


//   Pdam({
//     required this.kodePembayaran,
//     required this.namaPelanggan,
//     required this.jenisPelanggan,
//     required this.tanggal,
//     required this.meterBulanIni,
//     required this.meterBulanLalu,
//   });

//   int calculateMeterPakai() {  
//     return meterBulanIni - meterBulanLalu;  /// Menghitung jumlah meter air yang digunakan dalam bulan ini.
//   }


//   void calculateTotalBayar() {
//     int meterPakai = calculateMeterPakai();
//     int biayaPerMeter;


//     if (jenisPelanggan == 'GOLD') {
//       if (meterPakai <= 10) {
//         biayaPerMeter = 5000;
//       } else if (meterPakai <= 20) {
//         biayaPerMeter = 10000;
//       } else {
//         biayaPerMeter = 20000;
//       }


//     } else if (jenisPelanggan == 'SILVER') {
//       if (meterPakai <= 10) {
//         biayaPerMeter = 4000;
//       } else if (meterPakai <= 20) {
//         biayaPerMeter = 8000;
//       } else {
//         biayaPerMeter = 10000;
//       }


//     } else {        /// UMUM
//       if (meterPakai <= 10) {
//         biayaPerMeter = 2000;
//       } else if (meterPakai <= 20) {
//         biayaPerMeter = 3000;
//       } else {
//         biayaPerMeter = 5000;
//       }
//     }


//     totalBayar = meterPakai * biayaPerMeter;
//   }
// }


