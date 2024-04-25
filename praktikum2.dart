void main() {
 // Inisialisasi variabel
 int jumlahPiza = 10; 
 double hargaPerPiza = 80.0; // Misalkan harga per piza adalah 80
 int jumlahPeserta = 8; 
 // Hitung total biaya
 double totalBiaya = jumlahPiza * hargaPerPiza;
 // Hitung biaya per orang
 double biayaPerOrang = totalBiaya / jumlahPeserta;
 // Cetak hasil
 print("Jumlah Piza: $jumlahPiza");
 print("Total Biaya Pesta Piza: \$${totalBiaya.toStringAsFixed(2)}");
 print("Jumlah Peserta: $jumlahPeserta");
 print("Biaya per Orang: \$${biayaPerOrang.toStringAsFixed(2)}");
}