void main() {
 // Inisialisasi variabel poin
 int poin = 150; 

 // Penentuan level berdasarkan poin
 int level;
 if (poin < 100) {
 level = 1; 
 } else if (poin >= 100 && poin < 200) {
 level = 2; 
 } else { 
 level = 3; 
 }

 // Tampilkan aksi berdasarkan level
 print("Karakter Anda berada pada level $level. Aksi:");
 for (int i = 0; i < level; i++) {
 switch (level) {
 case 1:
 print("Level $level: Mengumpulkan kayu.");
 break; 
 case 2:
 print("Level $level: Membangun rumah.");
 break; 
 case 3:
 print("Level $level: Melawan monster.");
 break; 
 default:
 print("Tidak ada aksi untuk level ini.");
 } 
 } 
}