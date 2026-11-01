# Panduan Penggunaan Template LaTeX Tugas Akhir ITK

Panduan ini ditujukan untuk mahasiswa ITK yang ingin menggunakan template Tugas Akhir, termasuk yang belum pernah memakai LaTeX. Tidak semua perintah perlu dipahami sekaligus. Mulailah dengan membuka template, mencoba kompilasi, lalu mengubah isinya sedikit demi sedikit.

## 1. Sebelum mulai

Ada empat file utama di dalam paket:

| Jenis Tugas Akhir | File yang digunakan |
| --- | --- |
| Skripsi | `main_skripsi.tex` |
| Proyek | `main_proyek.tex` |
| Prototipe | `main_prototipe.tex` |
| Artikel Ilmiah | `main_artikel_ilmiah.tex` |

Pilih satu file sesuai jenis Tugas Akhir Anda. File lainnya boleh tetap berada di proyek, tetapi tidak perlu diedit.

Untuk Skripsi, Proyek, dan Prototipe, tahap dokumen dapat diatur melalui pilihan `proposal`, `revisiproposal`, atau `laporan` pada `\documentclass`. Contoh untuk proposal Skripsi:

```latex
\documentclass[skripsi,proposal]{itkta2025}
```

Untuk laporan akhir Skripsi:

```latex
\documentclass[skripsi,laporan]{itkta2025}
```

Pengaturan Artikel Ilmiah berbeda. Gunakan pengaturan yang sudah tersedia pada `main_artikel_ilmiah.tex`.

## 2. Cara paling mudah: menggunakan Overleaf

Overleaf dapat digunakan melalui browser, jadi Anda tidak perlu memasang aplikasi LaTeX terlebih dahulu.

1. Unduh ZIP template dari repository GitHub.
2. Buka [Overleaf](https://www.overleaf.com/) dan masuk ke akun Anda.
3. Pilih **New Project → Upload Project**, lalu unggah ZIP tersebut.
4. Setelah proyek terbuka, pilih **Menu → Main document**.
5. Pilih file utama sesuai jenis Tugas Akhir Anda.
6. Klik **Recompile** untuk membuat PDF.

Jika PDF berhasil dibuat, jangan langsung menghapus seluruh isi contoh. Coba ubah judul atau nama mahasiswa terlebih dahulu, kemudian kompilasi ulang. Setelah itu, barulah lanjutkan mengubah bagian lainnya.

## 3. Menggunakan TeXstudio di Windows

Jika ingin menulis tanpa koneksi internet, Anda dapat menggunakan MiKTeX dan TeXstudio.

1. Instal [MiKTeX](https://miktex.org/download).
2. Instal [TeXstudio](https://www.texstudio.org/).
3. Ekstrak ZIP template ke folder yang mudah ditemukan.
4. Buka file utama melalui TeXstudio.
5. Pilih PDFLaTeX sebagai compiler, lalu jalankan kompilasi.

Untuk memperbarui daftar pustaka berbasis BibTeX, jalankan PDFLaTeX → BibTeX → PDFLaTeX → PDFLaTeX. Pada instalasi tertentu, MiKTeX mungkin meminta izin memasang paket LaTeX tambahan.

## 4. Mengenal bagian yang boleh diubah

Sebagian besar pekerjaan Anda dilakukan di `main_*.tex`. Di dalamnya terdapat identitas, judul, abstrak, bab, dan bagian lain sesuai jenis Tugas Akhir.

Saat mengedit, perhatikan beberapa hal berikut:

- Perintah LaTeX biasanya diawali tanda `\`, misalnya `\section`.
- Kurung kurawal `{...}` menunjukkan isi atau argumen suatu perintah.
- Tanda `%` digunakan untuk komentar pada baris kode.
- Nama file dan lokasi gambar harus sesuai dengan yang ditulis pada kode.

Untuk penulisan biasa, **tidak perlu mengubah `itkta2025.cls`**. File tersebut mengatur tampilan dokumen. Jika ada format yang dirasa tidak sesuai, periksa dulu pedoman TA ITK sebelum mengubahnya.

## 5. Menulis bab dan subbab

Contoh penulisan judul bab dan subbab:

```latex
\chapter{PENDAHULUAN}
\section{Latar Belakang}
\subsection{Rumusan Masalah}
```

Setelah perintah tersebut, tulis paragraf seperti biasa. Nomor bab dan subbab akan dibuat oleh LaTeX. Anda tidak perlu mengetiknya secara manual.

Hindari menambah banyak baris kosong atau perintah jarak hanya agar teks terlihat pas di halaman. Sebaiknya biarkan template mengatur tata letaknya.

## 6. Menambahkan gambar

Simpan gambar di folder `images/`, misalnya `images/diagram_penelitian.png`. Contoh penggunaannya:

```latex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.7\textwidth]{images/diagram_penelitian.png}
  \caption{Diagram alir penelitian}
  \label{fig:diagram}
\end{figure}
```

Untuk menyebut gambar dalam paragraf, gunakan `Gambar~\ref{fig:diagram}`. Nomor gambar akan menyesuaikan secara otomatis.

Jika gambar tidak muncul, periksa penulisan nama file, ekstensi, serta lokasi foldernya.

## 7. Membuat tabel

Berikut contoh tabel sederhana:

```latex
\begin{table}[htbp]
\centering
\caption{Hasil pengujian}
\label{tab:hasil}
\begin{tabular}{|l|c|}
\hline
Parameter & Nilai \\
\hline
Pengujian A & 10 \\
Pengujian B & 20 \\
\hline
\end{tabular}
\end{table}
```

Tabel tersebut dapat dirujuk dengan `Tabel~\ref{tab:hasil}`. Untuk tabel yang lebih lebar atau panjang, lihat contoh tabel yang sudah tersedia dalam template.

## 8. Menulis persamaan

Persamaan dapat ditulis menggunakan lingkungan `equation`:

```latex
\begin{equation}
E = mc^2
\label{eq:energi}
\end{equation}
```

Jika ingin merujuknya, tulis `Persamaan~(\ref{eq:energi})` dalam paragraf.

## 9. Mengelola referensi dan sitasi

Daftar referensi disimpan dalam `referensi.bib`. Contoh format entri BibTeX:

```bibtex
@article{contoh2026,
  author  = {Penulis, Nama},
  title   = {Judul Artikel Contoh},
  journal = {Nama Jurnal},
  year    = {2026}
}
```

Entri tersebut hanya contoh penulisan, **bukan sumber ilmiah untuk digunakan dalam Tugas Akhir**. Ganti dengan referensi yang benar-benar Anda gunakan.

Di dalam naskah, sitasi dapat ditulis seperti berikut:

```latex
\citep{contoh2026}
\citet{contoh2026}
```

Kata `contoh2026` merupakan kunci referensi. Penulisannya harus sama dengan kunci yang ada di `referensi.bib`.

Jika hasil sitasi masih berupa tanda `?`, periksa kuncinya dan jalankan proses BibTeX, kemudian kompilasi ulang.

## 10. Jika kompilasi gagal

Jangan langsung menghapus bagian kode yang ditandai sebagai kesalahan. Pesan error kadang muncul beberapa baris setelah sumber masalah sebenarnya.

| Pesan atau masalah | Langkah pemeriksaan |
| --- | --- |
| `Undefined control sequence` | Periksa salah ketik perintah LaTeX atau paket yang diperlukan |
| `itkta2025.cls not found` | Pastikan file class berada dalam proyek |
| `File ... not found` | Periksa nama dan lokasi gambar atau file lain |
| Sitasi tampil `?` | Periksa `referensi.bib` dan jalankan BibTeX |
| PDF dari jenis TA yang salah | Periksa pilihan **Main document** |
| Tabel melewati batas halaman | Sesuaikan lebar kolom atau gunakan contoh tabel bawaan |

Jika masih belum berhasil, simpan pesan error dan bagian kode yang terkait. Informasi itu akan memudahkan orang lain membantu memeriksanya.

## 11. Pemeriksaan sebelum dikirim ke pembimbing

Sebelum mengirim naskah, sebaiknya periksa kembali:

- [ ] Jenis dan tahap Tugas Akhir sudah sesuai.
- [ ] Nama mahasiswa, judul, pembimbing, dan identitas lainnya sudah benar.
- [ ] Teks contoh yang tidak diperlukan sudah diganti.
- [ ] Gambar, tabel, dan persamaan muncul dengan benar.
- [ ] Nomor rujukan gambar, tabel, dan persamaan sesuai.
- [ ] Sitasi dan daftar pustaka sudah tampil.
- [ ] PDF dapat dibuka dan tidak ada kesalahan kompilasi yang menghentikan proses.
- [ ] Format dokumen sudah dibandingkan dengan pedoman TA ITK yang berlaku.

Biasakan menyimpan salinan proyek sebelum melakukan perubahan besar. Jika ada kesalahan, Anda dapat kembali ke versi sebelumnya tanpa harus menyusun ulang dokumen.

---

Template ini membantu proses penulisan, tetapi **pedoman resmi Tugas Akhir ITK dan ketentuan program studi tetap menjadi acuan utama**.
