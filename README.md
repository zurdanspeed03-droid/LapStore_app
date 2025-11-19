# 📱 UTS Mobile Programming 2  
## Judul Aplikasi: **LapStore** 💻

### 👩‍🎓 Identitas Mahasiswa
- **Nama Anggota Kelompok:**  
 1. Aqila Yufaridza (232101079)  
 2. Caca Cahyadi (232101058)  
 3. Rahmat Hardiansyah (232101072)  
- **Kelas:** TIF RP 23G  
- **Mata Kuliah:** Pemrograman Mobile 2  
- **Dosen Pengampu:** Niken Riyanti, ST.

---

### 📖 Deskripsi Aplikasi
Aplikasi **LapStore** adalah sebuah aplikasi mobile berbasis Flutter yang berfungsi sebagai **katalog produk laptop**. Aplikasi ini dirancang untuk mempermudah pengguna melihat berbagai jenis laptop dengan tampilan modern, interaktif, dan responsif. LapStore dibuat sebagai implementasi UTS Mata Kuliah Mobile Programming 2 dengan fokus pada penggunaan **GridView**, **Custom Widget**, **Animasi**, dan **StatefulWidget**.  

Fitur utama aplikasi:  

- Menampilkan daftar produk laptop menggunakan **GridView** yang responsif sesuai ukuran layar perangkat  
- Setiap produk dikemas dalam **Custom Widget** (`ProductCard`) yang menampilkan gambar, nama, harga, dan ikon favorite  
- Animasi interaktif:  
  - **Hero Animation** untuk transisi gambar produk dari halaman utama ke halaman detail  
  - **AnimatedScale** untuk memberi feedback saat menekan kartu produk atau ikon favorite  
  - **AnimatedContainer** pada kategori untuk menunjukkan kategori aktif secara visual  
- **StatefulWidget** digunakan untuk menyimpan dan memperbarui status UI, misalnya status favorite dan kategori aktif  
- **Splash Screen** dengan animasi fade dan scale saat pertama kali aplikasi dijalankan  

**Halaman Detail Produk** menampilkan informasi lengkap setiap laptop, termasuk:  
- Gambar produk besar dengan efek Hero  
- Nama, harga, spesifikasi singkat, dan deskripsi lengkap  
- Tombol aksi dummy seperti “Beli Sekarang” atau “Tambah ke Keranjang”  
Animasi dan interaksi ini meningkatkan pengalaman pengguna (UX) dan membuat aplikasi terasa lebih responsif dan menarik.  

**Alasan Desain dan Pemilihan Teknologi:**  
- Flutter dipilih untuk membuat UI yang konsisten di berbagai ukuran layar serta dukungan animasi yang kaya  
- Pemisahan GridView, Custom Widget, dan StatefulWidget membuat kode modular, mudah diuji, dan mudah dikembangkan  
- Animasi sederhana ditambahkan untuk membuat interaksi pengguna lebih menyenangkan  


---

### 📂 Link Google Drive (Laporan + Video Demo)
[➡️Laporan & Video Demo LapStore](https://drive.google.com/drive/folders/1oWxVn_z3TJhanIcaDX726o7y75oAdgmM?usp=sharing)  

---

### 🖼️ Tampilan Aplikasi

#### 1. Splash Screen
<img src="assets/screenshots/splash.png" width="300">

#### 2. Halaman Beranda (Home Page)
<img src="assets/screenshots/home.png" width="300">

#### 3. Detail Produk

| Laptop Gaming | Laptop Kantor | Laptop Desain |  
|---------------|---------------|---------------|  
| <img src="assets/screenshots/detail_gaming.png" width="200"> | <img src="assets/screenshots/detail_kantor.png" width="200"> | <img src="assets/screenshots/detail_desain.png" width="200"> |  

| Laptop Bisnis |  
|---------------|  
| <img src="assets/screenshots/detail_bisnis.png" width="200"> |  

---

© 2025 - Kelompok LapStore | Teknik Informatika | Universitas Teknologi Bandung
