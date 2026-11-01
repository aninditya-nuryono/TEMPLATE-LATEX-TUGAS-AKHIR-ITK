<div align="center">

# TA ITK · LaTeX Starter

**Dari dokumen kosong menuju naskah Tugas Akhir yang siap diperiksa.**

Template LaTeX untuk mahasiswa **Institut Teknologi Kalimantan (ITK)**.

**Skripsi · Proyek · Prototipe · Artikel Ilmiah**

[Mulai dari sini](#mulai-dari-sini) · [Pilih jenis TA](#pilih-jalur-tugas-akhir) · [Panduan pemula](PANDUAN_PEMULA.md)

</div>

---

## Mulai dari sini

Tidak perlu menguasai seluruh perintah LaTeX sebelum mulai menulis. **Target pertama: menghasilkan PDF dari template, lalu mengganti satu bagian dengan benar.**

| Langkah | Apa yang dilakukan | Hasil |
| :--: | --- | --- |
| 01 | Pilih jenis TA | Mengetahui file utama |
| 02 | Unggah ZIP ke [Overleaf](https://www.overleaf.com/) | Proyek terbuka |
| 03 | Atur **Main document** | Template yang tepat aktif |
| 04 | Klik **Recompile** | PDF pertama tampil |
| 05 | Ganti identitas, judul, dan isi secara bertahap | Naskah mulai terbentuk |

**Belum pernah menggunakan LaTeX?** Buka [Misi Pertama: Panduan Pemula](PANDUAN_PEMULA.md), dengan contoh dan checklist langkah demi langkah.

## Pilih jalur Tugas Akhir

| Jalur TA | File utama | Keterangan |
| --- | --- | --- |
| **Skripsi** | `main_skripsi.tex` | Dokumen TA bentuk skripsi |
| **Proyek** | `main_proyek.tex` | Dokumen TA bentuk proyek |
| **Prototipe** | `main_prototipe.tex` | Dokumen TA bentuk prototipe |
| **Artikel Ilmiah** | `main_artikel_ilmiah.tex` | Dokumen TA berbentuk artikel ilmiah |

Untuk Skripsi, Proyek, dan Prototipe, class juga mendukung mode `proposal`, `revisiproposal`, dan `laporan`. Pilih sesuai tahap dokumen dan ketentuan ITK.

## Tiga kelompok file yang perlu Anda kenal

| Kelompok | File | Yang Anda lakukan |
| --- | --- | --- |
| **Naskah** | `main_*.tex` | Edit sesuai jenis TA |
| **Bahan** | `referensi.bib`, `images/` | Tambahkan referensi dan gambar |
| **Format** | `itkta2025.cls`, `itkharvard.bst` | Jangan diubah sembarangan |

Paket juga menyediakan empat **contoh PDF**, skrip `compile.sh` dan `sync_github.sh`, serta dokumentasi. Skrip tidak wajib digunakan jika bekerja melalui Overleaf.

## Dua cara mulai

### Tanpa instalasi: Overleaf

1. Klik **Code → Download ZIP** di GitHub.
2. Masuk ke [Overleaf](https://www.overleaf.com/).
3. Pilih **New Project → Upload Project**.
4. Unggah ZIP dan atur **Menu → Main document**.
5. Klik **Recompile**.

### Offline: Windows 11

1. Instal [MiKTeX](https://miktex.org/download) dan [TeXstudio](https://www.texstudio.org/).
2. Ekstrak ZIP ke folder proyek.
3. Buka file utama pilihan.
4. Jalankan PDFLaTeX; untuk daftar pustaka gunakan **PDFLaTeX → BibTeX → PDFLaTeX → PDFLaTeX** bila diperlukan.

## Target pertama: PDF berhasil

- [ ] File utama sudah sesuai jalur TA.
- [ ] Proyek berhasil dikompilasi.
- [ ] Identitas dan judul dapat diganti.
- [ ] Gambar tampil.
- [ ] Sitasi dan daftar pustaka terbentuk.
- [ ] PDF sesuai panduan resmi TA ITK yang berlaku.

## Bila ada masalah

| Gejala | Periksa |
| --- | --- |
| PDF tidak muncul | Log error dan pilihan Main document |
| `itkta2025.cls not found` | Kelengkapan file proyek |
| Gambar hilang | Path dan nama file di `images/` |
| Sitasi `?` | Kunci di `referensi.bib` dan proses BibTeX |
| Tata letak berubah | Perubahan pada class atau pengaturan format |

Penjelasan dan contoh lebih lengkap tersedia di [PANDUAN_PEMULA.md](PANDUAN_PEMULA.md).

## Contoh hasil

Buka contoh PDF yang tersedia dalam repository untuk membandingkan hasil kompilasi Skripsi, Proyek, Prototipe, dan Artikel Ilmiah. Contoh adalah bahan latihan, bukan naskah yang siap diserahkan.

## Kontribusi dan acuan

Laporkan kesalahan melalui GitHub Issues dengan menyebutkan jenis TA, sistem operasi/editor, dan pesan error. Hindari mengunggah data pribadi atau naskah mahasiswa yang belum layak dipublikasikan.

Template ini adalah **alat bantu penulisan** yang disusun mengacu pada panduan TA ITK 2025, **bukan pernyataan pengesahan institusional**. Apabila ada perbedaan, ikuti pedoman resmi ITK yang berlaku.

---

<div align="center">

**Mulai dari satu halaman. Pastikan PDF berhasil. Lanjutkan menulis Tugas Akhir Anda.**

[Panduan Pemula](PANDUAN_PEMULA.md)

</div>
