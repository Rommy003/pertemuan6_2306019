# Modul 6: Form & Input Validation - Praktikum Mobile

Repository ini berisi hasil praktikum Modul 6 yang berfokus pada pembuatan formulir (Form) dan validasi input pengguna di Flutter.

## Deskripsi Materi
Pada praktikum ini, dipelajari cara mengelola input dari pengguna secara aman dan interaktif. Materi utama meliputi:
1. **Penggunaan Form & TextFormField**: Menggunakan widget `Form` sebagai wadah dan `TextFormField` untuk menerima input teks dengan fitur validasi terintegrasi.
2. **TextEditingController**: Mengelola dan mengambil nilai yang diketikkan pengguna secara real-time.
3. **Validasi Input (Validation)**: Menerapkan logika pengecekan (seperti "wajib diisi" atau "minimal karakter") untuk memastikan data yang dikirim benar.
4. **GlobalKey<FormState>**: Menggunakan key global untuk memicu fungsi validasi pada seluruh field di dalam form secara bersamaan.
5. **Feedback Pengguna**: Menampilkan pesan error pada field dan menggunakan `SnackBar` untuk memberikan notifikasi sukses.

## Fitur Aplikasi
* **Halaman Login**: 
  - Input Username dengan validasi minimal 4 karakter.
  - Input Password dengan fitur `obscureText` (disembunyikan) dan validasi minimal 6 karakter.
* **Validasi Real-time**: Menampilkan pesan peringatan warna merah jika input tidak sesuai kriteria.
* **Navigasi & Passing Data**: Setelah login berhasil, aplikasi akan berpindah ke halaman **Home** dan menampilkan nama user yang diinputkan.

## Struktur File Utama
* `lib/main.dart`: Berisi logika Form Login, validasi, dan controller.
* `lib/home.dart`: Berisi tampilan halaman tujuan setelah login berhasil (Halaman Welcome).

## Cara Menjalankan
1. Pastikan Flutter SDK sudah terinstal.
2. Jalankan perintah `flutter pub get`.
3. Jalankan aplikasi dengan `flutter run`.
