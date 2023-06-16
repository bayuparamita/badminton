# Peringkat Dunia Bulutangkis
Peringkat dunia bulutangkis yang biasa disebut BWF World Ranking adalah peringkat resmi dari Federasi Bulu Tangkis Dunia untuk pemain bulu tangkis yang berpartisipasi dalam turnamen yang disetujui oleh Federasi Bulu Tangkis Dunia. Poin peringkat diberikan berdasarkan tingkat dan kemajuan turnamen dari setiap pemain/pasangan. Peringkat poin dihitung berdasarkan partisipasi turnamen oleh masing-masing pemain/pasangan selama 52 minggu terakhir. Jika seorang pemain atau pasangan telah berpartisipasi dalam 10 atau kurang turnamen dunia, peringkat ditentukan dengan menjumlahkan poin yang dimenangkan di turnamen dalam 52 minggu terakhir. Jika seorang pemain atau pasangan yang telah berpartisipasi dalam 11 atau lebih turnamen dunia, hanya 10 poin tertinggi yang dicetak di turnamen selama periode 52 minggu akan diperhitungkan dalam peringkat mereka.

## Deskripsi 
Data Peringkat Dunia Bulutangkis diperoleh dari web https://bwf.tournamentsoftware.com/ranking/ranking.aspx?rid=70 dengan deskripsi sebagai berikut
1. Sepuluh tunggal putra terbaik dunia
2. Sepuluh tunggal putri terbaik dunia
3. Sepuluh ganda putra terbaik dunia
4. Sepuluh ganda putri terbaik dunia
5. Sepuluh ganda campuran terbaik dunia

Data terdiri dari ranking, nama, poin, dan negara. Data yang sudah diperoleh diberi kategori.
Peringkat dunia bulu tangkis diperbarui setiap hari Selasa. Karena itu, data disalin setiap hari Selasa.

## Contoh dokumen

Berikut ini adalah contoh dokumen pada koleksi MongoDB yang sudah tersimpan

```
{"_id":
  {"$oid":"6482fd7e7f8e20b45c05b0c1"},
  "Ranking": "1",
  "Nama":"[DEN] Viktor AXELSEN",
  "Skor":"103005",
  "Negara":"Denmark",
  "Kategori":"Tunggal Putra"
}
```
