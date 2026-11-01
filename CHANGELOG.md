# Changelog

Seluruh perubahan penting pada proyek **Template LaTeX Tugas Akhir ITK 2025** didokumentasikan pada berkas ini.

## [1.2.0] - 2025-10-27
### Added
- Menambahkan template **Artikel Ilmiah Tugas Akhir** (`main_artikel_ilmiah.tex`) sesuai Bab IV Panduan Kepenulisan TA ITK 2025.
- Menambahkan skrip kompilasi cerdas `compile.sh` untuk build otomatis 4-pass (`pdflatex` + `bibtex` + `pdflatex` x2) dan pembersihan file sementara (`--clean`).
- Menambahkan skrip sinkronisasi GitHub otomatis `sync_github.sh` (pembuatan *Private Repository* otomatis & satu perintah *pull/push*).
- Menambahkan dukungan tabel lintas halaman otomatis (`xltabular`) pada Tabel Penelitian Terdahulu yang mengulang kepala tabel (*repeating header*) saat terpotong halaman.

### Changed
- Memperbaiki gaya daftar pustaka Harvard Bahasa Indonesia (`itkharvard.bst`) agar mencetak judul dalam tanda kutip ganda (`"..."`), `Vol.`, `No.`, dan `hal.` persis seperti contoh pada `Template.docx`.
- Memperbaiki halaman `ABSTRACT` (Bahasa Inggris) pada `itkta2025.cls` agar dicetak tegak (Roman) sesuai standar template.
- Menambahkan tiga baris titik-titik (`\dotfill`) pengapit judul Tugas Akhir pada halaman *Pernyataan Persetujuan Publikasi*.
- Menyesuaikan label jabatan dosen pada *Lembar Pengesahan* secara otomatis (`Pembimbing Utama / Pendamping` untuk Proyek, serta `Pembimbing I / II` untuk Skripsi dan Prototipe).
- Mengubah judul Bab 5 pada bentuk Skripsi menjadi `BAB 5 KESIMPULAN DAN SARAN` sesuai `Template Laporan TA 2025 SKRIPSI_Final.docx`.

## [1.1.0] - 2025-10-20
### Fixed
- Memperbaiki tata letak Sampul Luar, Sampul Dalam, Sampul Belakang (Biodata Penulis), dan Punggung Buku (*Spine*) menggunakan koordinat absolut TikZ (`remember picture, overlay`) sehingga 100% bebas tumpang tindih (*zero overlap*).
- Memperbaiki lebar Tabel 2.1 dan Tabel 2.3 menggunakan `tabularx` selebar `	extwidth` (`14 cm`) agar tidak melewati batas margin kanan.

## [1.0.0] - 2025-10-07
### Added
- Rilis awal kelas dokumen `itkta2025.cls` berdasarkan SK Rektor ITK Nomor 6887/IT10/AK.07/2025 dan SK Rektor ITK Nomor 6886/IT10/AK.07/2025 untuk tiga bentuk TA: **Skripsi**, **Proyek**, dan **Prototipe**.
