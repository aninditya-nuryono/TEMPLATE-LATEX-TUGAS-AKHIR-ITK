# Template LaTeX Tugas Akhir Institut Teknologi Kalimantan (ITK)

Template LaTeX untuk membantu mahasiswa menyiapkan dokumen Tugas Akhir secara konsisten. Repository ini menyediakan pilihan dokumen **Skripsi, Proyek, Prototipe, dan Artikel Ilmiah**.

> **Status repository: dalam proses pelengkapan.** Berkas sumber dan contoh PDF belum semuanya tersedia di GitHub. Jangan menganggap repository ini siap dipakai sebelum semua berkas diunggah dan diuji.

## Daftar isi
- [Mulai cepat untuk pemula](#mulai-cepat-untuk-pemula)
- [Jenis dokumen](#jenis-dokumen)
- [Struktur proyek](#struktur-proyek)
- [Penggunaan di Overleaf](#penggunaan-di-overleaf)
- [Penggunaan offline](#penggunaan-offline)
- [Mengubah isi dan referensi](#mengubah-isi-dan-referensi)
- [Masalah umum](#masalah-umum)
- [Kontribusi dan status](#kontribusi-dan-status)

## Mulai cepat untuk pemula

**Belum pernah memakai LaTeX?** Mulai dari [PANDUAN_PEMULA.md](PANDUAN_PEMULA.md). Cara paling mudah adalah memakai [Overleaf](https://www.overleaf.com/) melalui browser tanpa memasang perangkat lunak.

Setelah seluruh berkas template tersedia: unduh ZIP repository, unggah ke Overleaf sebagai proyek baru, pilih dokumen utama, ganti data contoh, lalu klik **Recompile**.

## Jenis dokumen

| Jenis TA | Berkas utama |
| --- | --- |
| Skripsi | `main_skripsi.tex` |
| Proyek | `main_proyek.tex` |
| Prototipe | `main_prototipe.tex` |
| Artikel Ilmiah | `main_artikel_ilmiah.tex` |

Pilih **satu** dokumen utama sesuai jenis TA yang digunakan.

## Struktur proyek

Struktur yang direncanakan mengikuti paket sumber asli:

```text
TEMPLATE-LATEX-TUGAS-AKHIR-ITK/
├── README.md
├── PANDUAN_PEMULA.md
├── CHANGELOG.md
├── LICENSE
├── .gitignore
├── itkta2025.cls
├── itkharvard.bst
├── referensi.bib
├── main_skripsi.tex
├── main_proyek.tex
├── main_prototipe.tex
├── main_artikel_ilmiah.tex
├── images/
│   └── (gambar pendukung)
├── compile.sh
├── sync_github.sh
└── Contoh_Hasil_*.pdf
```

**Catatan:** Diagram di atas menggambarkan paket yang disiapkan, bukan jaminan seluruh berkas sudah ada di branch `main`.

## Penggunaan di Overleaf

1. Buka [Overleaf](https://www.overleaf.com/) dan masuk ke akun.
2. Unduh ZIP repository setelah seluruh file tersedia.
3. Pilih **New Project → Upload Project**.
4. Buka **Menu → Main document**, lalu pilih `main_*.tex` yang sesuai.
5. Ganti judul, identitas, pembimbing, abstrak, dan isi contoh.
6. Klik **Recompile** dan periksa PDF.

Jangan menghapus `itkta2025.cls`, `itkharvard.bst`, `referensi.bib`, atau folder `images/`.

## Penggunaan offline

Untuk Windows, instal [MiKTeX](https://miktex.org/download) dan [TeXstudio](https://www.texstudio.org/). Ekstrak proyek, buka dokumen utama, lalu compile menggunakan PDFLaTeX. Bila daftar pustaka belum diperbarui, gunakan urutan **PDFLaTeX → BibTeX → PDFLaTeX → PDFLaTeX**.

Untuk Linux dan macOS, gunakan distribusi TeX yang sesuai serta editor LaTeX pilihan Anda. Detail langkah awal tersedia di [panduan pemula](PANDUAN_PEMULA.md).

## Mengubah isi dan referensi

- **Identitas dan isi:** edit dokumen utama yang dipilih.
- **Gambar:** letakkan berkas di `images/` dan sesuaikan path dalam perintah `\includegraphics`.
- **Referensi:** masukkan entri ke `referensi.bib`, kemudian gunakan kunci sitasi sesuai contoh dalam template.
- **Tata letak:** hindari mengubah `itkta2025.cls` tanpa memahami konsekuensinya.

## Masalah umum

| Gejala | Pemeriksaan awal |
| --- | --- |
| PDF gagal dibuat | Periksa pesan error dan pilihan Main document |
| File class tidak ditemukan | Pastikan `itkta2025.cls` ada di proyek |
| Gambar tidak muncul | Periksa nama file, ekstensi, dan path |
| Sitasi bertanda `?` | Periksa kunci referensi dan jalankan BibTeX |
| Format berbeda | Periksa perubahan pada class dan bandingkan dengan panduan ITK |

## Kontribusi dan status

Perbaikan dokumentasi, laporan kesalahan, dan usulan penyempurnaan dapat diajukan melalui GitHub Issues. Perubahan format akademik perlu diverifikasi terhadap pedoman resmi yang berlaku.

Repository ini **bukan pernyataan pengesahan resmi institusi**. Template disusun sebagai alat bantu mengacu pada panduan penulisan TA ITK 2025. Apabila ada perbedaan, pedoman resmi ITK yang berlaku menjadi acuan utama.

### Referensi dokumentasi

Penyusunan README ini mengambil inspirasi dari kelengkapan dokumentasi [Template LaTeX Tugas Akhir Sarjana Terapan UNY](https://github.com/2black0/Template-LaTeX-Tugas-Akhir-Sarjana-Terapan-UNY), khususnya alur pemula, struktur proyek, dan troubleshooting. Isi dan berkas template tetap disesuaikan dengan kebutuhan ITK; tidak dimaksudkan sebagai salinan template UNY.
