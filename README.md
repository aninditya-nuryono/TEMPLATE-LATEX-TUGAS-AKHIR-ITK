# Template LaTeX Tugas Akhir ITK

Repository ini berisi template LaTeX untuk penulisan Tugas Akhir di **Institut Teknologi Kalimantan (ITK)**. Tersedia empat pilihan dokumen, yaitu Skripsi, Proyek, Prototipe, dan Artikel Ilmiah.

Template ini disiapkan agar mahasiswa tidak perlu mengatur format dokumen dari awal. Anda bisa lebih fokus pada isi Tugas Akhir, sementara pengaturan halaman dan beberapa bagian dokumen sudah ditangani oleh template.

Jika baru pertama kali menggunakan LaTeX, silakan baca [Panduan Penggunaan untuk Pemula](PANDUAN_PEMULA.md).

## Pilih template sesuai jenis Tugas Akhir

| Jenis Tugas Akhir | File LaTeX | Contoh hasil PDF |
| --- | --- | --- |
| Skripsi | [`main_skripsi.tex`](main_skripsi.tex) | [Lihat PDF](main_skripsi.pdf) |
| Proyek | [`main_proyek.tex`](main_proyek.tex) | [Lihat PDF](main_proyek.pdf) |
| Prototipe | [`main_prototipe.tex`](main_prototipe.tex) | [Lihat PDF](main_prototipe.pdf) |
| Artikel Ilmiah | [`main_artikel_ilmiah.tex`](main_artikel_ilmiah.tex) | [Lihat PDF](main_artikel_ilmiah.pdf) |

PDF pada tabel dapat digunakan untuk melihat contoh tampilan dokumen. Untuk menulis Tugas Akhir, buka dan edit file `.tex` yang sesuai.

Cukup gunakan satu file utama sesuai jenis Tugas Akhir Anda. Ketentuan mengenai pilihan jenis Tugas Akhir tetap mengikuti aturan program studi.

## Cara menggunakan template

**Menggunakan Overleaf (online)**

1. Klik **Code → Download ZIP** pada halaman repository ini.
2. Buka [Overleaf](https://www.overleaf.com/), lalu masuk ke akun Anda.
3. Pilih **New Project → Upload Project** dan unggah file ZIP tadi.
4. Buka **Menu → Main document**, lalu pilih file `.tex` sesuai jenis Tugas Akhir.
5. Klik **Recompile**. 

**Menggunakan komputer sendiri (local)**

Untuk Windows, Anda dapat menggunakan [MiKTeX](https://miktex.org/download) dan [TeXstudio](https://www.texstudio.org/). Setelah keduanya terpasang, ekstrak ZIP, buka file utama, lalu kompilasi menggunakan PDFLaTeX. Jika daftar pustaka belum muncul atau belum diperbarui, jalankan urutan PDFLaTeX → BibTeX → PDFLaTeX → PDFLaTeX.

## File mana yang perlu diedit?

| File atau folder | Kegunaan |
| --- | --- |
| `main_*.tex` | Isi Tugas Akhir, termasuk identitas dan bagian naskah |
| `referensi.bib` | Menyimpan daftar referensi yang akan disitasi |
| `images/` | Menyimpan gambar yang digunakan dalam dokumen |
| `itkta2025.cls` | Mengatur format dokumen; sebaiknya tidak diubah untuk penulisan biasa |
| `itkharvard.bst` | Mengatur format daftar pustaka |
| `PANDUAN_PEMULA.md` | Petunjuk penggunaan beserta contoh kode |

## Hal yang perlu diperiksa sebelum menulis

Pastikan file utama yang dipilih sudah benar dan proses kompilasi berhasil menghasilkan PDF. Setelah itu, coba ganti judul atau nama mahasiswa, lalu kompilasi kembali. Cara ini membantu memastikan proyek sudah berjalan dengan baik sebelum Anda mengubah banyak bagian sekaligus.

Untuk Skripsi, Proyek, dan Prototipe, tersedia pilihan tahap dokumen seperti `proposal`, `revisiproposal`, dan `laporan`. Pengaturannya ada pada perintah `\documentclass` di bagian awal file utama. Sesuaikan dengan dokumen yang sedang dikerjakan.

## Jika muncul kesalahan

| Masalah | Yang bisa diperiksa |
| --- | --- |
| PDF tidak muncul | Periksa pesan kesalahan dan pilihan **Main document** |
| `itkta2025.cls not found` | Pastikan semua file template sudah diunggah |
| Gambar tidak muncul | Periksa nama dan lokasi file pada folder `images/` |
| Sitasi menjadi `?` | Periksa kunci referensi di `referensi.bib`, lalu kompilasi ulang |
| Tampilan dokumen berubah | Periksa apakah ada pengaturan di file class yang ikut diubah |

Penjelasan yang lebih rinci, termasuk cara menambahkan tabel, gambar, persamaan, dan sitasi, tersedia dalam [panduan pemula](PANDUAN_PEMULA.md).

## Masukan dan perbaikan

Jika menemukan kesalahan pada template, silakan laporkan melalui **Issues** di repository ini. Sertakan nama file, bagian yang bermasalah, dan pesan kesalahannya jika ada. Jangan mengunggah data pribadi atau naskah mahasiswa yang belum boleh dipublikasikan.

**Catatan:** Template ini merupakan alat bantu penulisan yang mengacu pada pedoman Tugas Akhir ITK 2025. Template ini tidak dimaksudkan sebagai pernyataan pengesahan resmi institusi. Jika ada perbedaan format atau ketentuan, gunakan pedoman resmi ITK dan arahan program studi yang berlaku.
