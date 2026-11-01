<div align="center">

# TA ITK · LaTeX Starter

**Dari dokumen kosong menuju naskah Tugas Akhir yang siap diperiksa.**

Template penulisan Tugas Akhir untuk mahasiswa **Institut Teknologi Kalimantan**.

**Skripsi · Proyek · Prototipe · Artikel Ilmiah**

[Mulai dalam 10 menit](#mulai-dari-sini) · [Pilih jenis TA](#pilih-jalur-tugas-akhir) · [Panduan pemula](PANDUAN_PEMULA.md)

</div>

---

> [!IMPORTANT]
> **Status pengembangan:** repository sedang dilengkapi. File sumber dan contoh PDF belum seluruhnya tersedia di GitHub. Tunggu hingga unggahan dan pengujian selesai sebelum menggunakan paket sebagai template final.

## Mulai dari sini

**Anda tidak perlu menguasai LaTeX untuk mulai menulis.** Gunakan alur berikut setelah seluruh berkas template tersedia:

| Langkah | Yang dilakukan | Hasil yang diharapkan |
| :--: | --- | --- |
| **01** | Tentukan jalur TA pada tabel di bawah | Mengetahui file utama yang dipakai |
| **02** | Unduh ZIP repository dan unggah ke [Overleaf](https://www.overleaf.com/) | Proyek LaTeX terbuka di browser |
| **03** | Atur **Main document** ke file utama pilihan Anda | Kompilasi menggunakan format yang tepat |
| **04** | Klik **Recompile** sebelum mengubah apa pun | PDF contoh pertama muncul |
| **05** | Ganti identitas, judul, abstrak, dan isi bertahap | Naskah TA mulai terbentuk |

**Pertama kali menggunakan Overleaf?** Ikuti [panduan langkah demi langkah](PANDUAN_PEMULA.md).

## Pilih jalur Tugas Akhir

Satu repository, empat titik awal. Pilih **satu** file utama sesuai jenis dokumen yang Anda kerjakan.

| Jalur | File yang dibuka | Kapan dipilih |
| --- | --- | --- |
| **Skripsi** | `main_skripsi.tex` | Ketika menyusun TA dalam format skripsi |
| **Proyek** | `main_proyek.tex` | Ketika menyusun laporan TA berbasis proyek |
| **Prototipe** | `main_prototipe.tex` | Ketika menyusun laporan TA berbasis prototipe |
| **Artikel Ilmiah** | `main_artikel_ilmiah.tex` | Ketika menggunakan format TA artikel ilmiah |

Penentuan jenis TA dan persyaratan akademiknya tetap mengikuti ketentuan program studi dan pedoman ITK yang berlaku.

## Kenali isi proyek dalam satu menit

Alih-alih menghafal semua file, kenali tiga kelompok ini:

| Kelompok | File / folder | Perlakuan |
| --- | --- | --- |
| **Naskah Anda** | `main_*.tex` | **Edit** file yang sesuai jalur TA |
| **Bahan naskah** | `referensi.bib`, `images/` | **Tambah dan sesuaikan** referensi atau gambar |
| **Mesin format** | `itkta2025.cls`, `itkharvard.bst` | **Pertahankan**, kecuali ada perubahan format yang telah diverifikasi |

Berkas lain dalam paket mencakup `compile.sh`, `sync_github.sh`, dokumentasi, dan contoh PDF. Skrip merupakan alat bantu opsional, bukan prasyarat bagi pengguna Overleaf.

## Dua cara bekerja

### Jalur A — Overleaf: untuk mulai tanpa instalasi

1. Buka [Overleaf](https://www.overleaf.com/) dan masuk.
2. Pilih **New Project → Upload Project**, kemudian unggah ZIP template.
3. Pilih **Menu → Main document** sesuai jalur TA.
4. Tekan **Recompile**.
5. Edit naskah sedikit demi sedikit sambil memeriksa hasil PDF.

### Jalur B — Offline: untuk menulis di komputer sendiri

Di Windows, instal [MiKTeX](https://miktex.org/download) dan [TeXstudio](https://www.texstudio.org/). Ekstrak paket, buka file utama, dan jalankan PDFLaTeX. Untuk memperbarui daftar pustaka berbasis BibTeX, gunakan urutan:

```text
PDFLaTeX → BibTeX → PDFLaTeX → PDFLaTeX
```

Pengguna Linux atau macOS dapat memakai distribusi TeX dan editor yang sesuai. Lihat [panduan pemula](PANDUAN_PEMULA.md) untuk pengenalan perintah dasar.

## Target pertama: PDF yang berhasil dibuat

Sebelum menulis banyak halaman, lakukan uji sederhana berikut:

- [ ] File utama sudah sesuai jenis TA.
- [ ] Proyek dapat dikompilasi tanpa error yang menghentikan proses.
- [ ] Judul dan identitas contoh dapat diganti.
- [ ] Gambar yang digunakan dapat ditemukan.
- [ ] Sitasi dan daftar pustaka tampil setelah kompilasi yang sesuai.
- [ ] Hasil PDF dibandingkan dengan panduan penulisan TA ITK yang berlaku.

**Mengapa mulai dari PDF?** Jika proyek dasar sudah berhasil dikompilasi, kesalahan saat menulis berikutnya jauh lebih mudah dilacak.

## Saat ada masalah, mulai dari gejalanya

| Yang terlihat | Yang diperiksa terlebih dahulu |
| --- | --- |
| PDF tidak muncul | Pesan error dan pilihan **Main document** |
| `itkta2025.cls not found` | Apakah file class ikut berada di proyek? |
| Gambar kosong / hilang | Path, ekstensi, dan kapitalisasi nama file |
| Sitasi menjadi `?` | Kunci pada `referensi.bib` dan proses BibTeX |
| Format halaman berubah | Apakah class atau pengaturan format ikut diedit? |

Jangan mengubah file class hanya untuk menghilangkan error sebelum mengetahui penyebabnya.

## Contoh keluaran

Paket sumber disiapkan dengan contoh PDF untuk keempat jenis TA. Setelah seluruh berkas tersedia di repository, contoh tersebut dapat digunakan sebagai pembanding visual hasil kompilasi.

## Untuk pembimbing dan kontributor

Masukan perbaikan, laporan kesalahan, dan usulan dokumentasi dapat diajukan melalui **GitHub Issues**. Saat melaporkan masalah kompilasi, sertakan jenis TA, sistem operasi atau editor, serta pesan error yang relevan. Hindari menyertakan naskah mahasiswa atau informasi pribadi yang tidak perlu.

### Ruang lingkup dan acuan

Repository ini adalah **alat bantu penulisan**, bukan pernyataan bahwa template telah disahkan secara institusional. Penggunaan dan penilaian dokumen mengikuti **pedoman resmi Tugas Akhir Institut Teknologi Kalimantan** dan ketentuan program studi yang berlaku.

---

<div align="center">

**Mulai dari satu halaman. Pastikan PDF berhasil. Lanjutkan menulis Tugas Akhir Anda.**

[**Panduan untuk pemula**](PANDUAN_PEMULA.md)

</div>
