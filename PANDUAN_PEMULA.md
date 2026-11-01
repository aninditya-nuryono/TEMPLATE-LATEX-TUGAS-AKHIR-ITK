# Misi Pertama: Menulis Tugas Akhir ITK dengan LaTeX

**Panduan praktik dari nol — khusus mahasiswa Institut Teknologi Kalimantan.**

Tidak perlu mempelajari semua perintah LaTeX. Target pertama Anda sederhana: **membuka template, menghasilkan PDF, lalu mengganti satu bagian tanpa merusak format**.

## Peta perjalanan

| Tahap | Misi | Bukti berhasil |
|---|---|---|
| 0 | Pilih jenis Tugas Akhir | Mengetahui file utama |
| 1 | Buka proyek di Overleaf | Semua file terlihat |
| 2 | Buat PDF pertama | Hasil kompilasi tampil |
| 3 | Ganti identitas dan judul | Perubahan muncul di PDF |
| 4 | Menulis satu subbab | Teks dan penomoran tampil |
| 5 | Tambahkan gambar, tabel, persamaan | Objek muncul dan dapat dirujuk |
| 6 | Tambahkan referensi | Sitasi dan daftar pustaka terbentuk |
| 7 | Periksa naskah sebelum dikirim | Tidak ada error atau data contoh tertinggal |

## Misi 0 — Tentukan jalur TA

| Jenis dokumen | File utama |
|---|---|
| Skripsi | `main_skripsi.tex` |
| Proyek | `main_proyek.tex` |
| Prototipe | `main_prototipe.tex` |
| Artikel Ilmiah | `main_artikel_ilmiah.tex` |

Untuk Skripsi, Proyek, dan Prototipe, kelas `itkta2025.cls` mendukung tahapan `proposal`, `revisiproposal`, dan `laporan`. Contohnya:

```latex
\documentclass[skripsi,proposal]{itkta2025}
```

Untuk laporan akhir Skripsi:

```latex
\documentclass[skripsi,laporan]{itkta2025}
```

**Jangan mengubah opsi kelas artikel ilmiah mengikuti contoh di atas tanpa memeriksa file aslinya.** Artikel ilmiah mempunyai file utama tersendiri.

## Misi 1 — Masuk Overleaf tanpa instalasi

1. Buka https://www.overleaf.com dan masuk atau buat akun.
2. Pilih **New Project → Upload Project**.
3. Unggah file ZIP paket lengkap ini.
4. Buka **Menu → Main document** dan pilih file `main_*.tex` sesuai jalur TA.
5. Pastikan file `itkta2025.cls`, `itkharvard.bst`, `referensi.bib`, dan folder `images/` ikut terunggah.

**Penting:** Bila paket memuat empat file utama, Overleaf tidak otomatis tahu file mana yang ingin Anda kompilasi. Pilihan **Main document** menentukan hasilnya.

## Misi 2 — PDF pertama, sebelum menulis

Klik **Recompile**. Jangan langsung menghapus seluruh isi contoh. Pertama, pastikan proyek awal menghasilkan PDF. Jika kompilasi gagal, buka log error dan baca pesan pertama yang relevan.

Perhatikan: daftar pustaka mungkin memerlukan pemrosesan BibTeX. Hasil PDF contoh yang disertakan adalah pembanding visual, bukan pengganti pengujian kompilasi di komputer Anda.

## Misi 3 — Ubah satu hal, lalu cek PDF

Cari bagian identitas dan judul dalam file utama, kemudian ganti **teks contoh** saja. Klik **Recompile**.

**Aturan aman:**
- Teks biasa dapat diganti.
- Perintah yang diawali `\` jangan dihapus bila belum dipahami.
- Tanda `{...}` dan `[...]` sering merupakan bagian dari sintaks.
- Tanda `%` memulai komentar hingga akhir baris.
- Simpan salinan proyek sebelum mengubah format.

## Misi 4 — Menulis isi tanpa mengatur margin manual

Untuk dokumen bab, pola umum penulisan adalah:

```latex
\chapter{PENDAHULUAN}
\section{Latar Belakang}
\subsection{Permasalahan}
```

Tulis paragraf setelah judul bagian. Biarkan kelas `itkta2025.cls` menangani tata letak. **Jangan membuat jarak dengan menekan Enter berulang-ulang atau menambahkan `\vspace` untuk mengejar tampilan.**

## Misi 5 — Gambar, tabel, dan persamaan

### Gambar

Letakkan gambar di folder `images/`, misalnya `images/diagram_penelitian.png`.

```latex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.7\textwidth]{images/diagram_penelitian.png}
  \caption{Diagram alir penelitian}
  \label{fig:diagram}
\end{figure}
```

Rujuk dengan `Gambar~\ref{fig:diagram}`. Gunakan nama file yang sederhana dan konsisten.

### Tabel

```latex
\begin{table}[htbp]
\centering
\caption{Contoh hasil pengujian}
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

Rujuk dengan `Tabel~\ref{tab:hasil}`. Untuk tabel lebar atau lintas halaman, **ikuti contoh tabel yang sudah tersedia dalam file utama**, karena template ITK juga menyediakan pola tabel khusus.

### Persamaan

```latex
\begin{equation}
E = mc^2
\label{eq:energi}
\end{equation}
```

Rujuk dengan `Persamaan~(\ref{eq:energi})`.

## Misi 6 — Referensi tanpa mengetik daftar pustaka manual

Buka `referensi.bib`, lalu tambahkan entri BibTeX:

```bibtex
@article{contoh2026,
  author  = {Penulis, Nama},
  title   = {Judul Artikel Contoh},
  journal = {Nama Jurnal},
  year    = {2026}
}
```

Di naskah, contoh perintah sitasi yang dipakai template:

```latex
\citep{contoh2026}
\citet{contoh2026}
```

Contoh di atas adalah **data latihan**, bukan referensi ilmiah yang boleh dipakai sebagai sumber penelitian. Ganti dengan sumber yang benar-benar Anda baca.

Jika sitasi tampil `?`, periksa apakah kunci dalam kurung kurawal cocok dengan entri `.bib`. Untuk kompilasi lokal, gunakan urutan **PDFLaTeX → BibTeX → PDFLaTeX → PDFLaTeX**.

## Misi 7 — Bekerja offline di Windows 11

1. Instal **MiKTeX**: https://miktex.org/download
2. Instal **TeXstudio**: https://www.texstudio.org/
3. Ekstrak ZIP ke folder proyek biasa.
4. Buka file utama pilihan Anda.
5. Atur compiler PDFLaTeX dan proses bibliografi BibTeX bila dibutuhkan.
6. Jalankan kompilasi dan periksa hasil PDF.

Pengguna Linux/macOS dapat memakai distribusi TeX yang sesuai. File `compile.sh` ditujukan untuk lingkungan shell yang mendukungnya; pengguna Windows pemula tidak wajib memakai skrip tersebut.

## Pusat bantuan: kenali gejalanya

| Gejala | Penyebab yang perlu dicek | Tindakan pertama |
|---|---|---|
| PDF dari jenis TA yang salah | Main document keliru | Pilih file utama yang benar |
| `itkta2025.cls not found` | File class tidak terunggah | Unggah seluruh isi proyek |
| Gambar tidak tampil | Path/nama gambar berbeda | Periksa `images/` dan kapitalisasi |
| Sitasi menjadi `?` | Kunci `.bib` salah atau BibTeX belum dijalankan | Cocokkan kunci dan compile ulang |
| `Undefined control sequence` | Perintah salah ketik atau paket belum tersedia | Baca log di baris terkait |
| Tabel melewati batas halaman | Tabel terlalu lebar | Gunakan pola tabel bawaan template |
| Perubahan tidak muncul | File yang diedit bukan main document | Periksa file aktif dan Recompile |

## Pemeriksaan akhir sebelum dikirim ke dosen pembimbing

- [ ] Jenis TA dan tahap dokumen sudah sesuai.
- [ ] Identitas, judul, pembimbing, dan abstrak sudah benar.
- [ ] Semua teks contoh yang tidak relevan telah diganti.
- [ ] Gambar, tabel, dan persamaan dapat dirujuk.
- [ ] Sitasi dan daftar pustaka tidak menampilkan tanda tanya.
- [ ] Tidak ada error kompilasi yang menghentikan proses.
- [ ] PDF dibandingkan dengan **panduan resmi penulisan TA ITK yang berlaku**.
- [ ] File sumber dan PDF disimpan dengan nama yang mudah dikenali.
- [ ] Tidak ada data pribadi atau naskah belum publik yang terunggah ke repository publik.

## Kapan harus mengubah `itkta2025.cls`?

Hampir tidak pernah untuk pekerjaan penulisan biasa. File tersebut adalah **mesin format**, sedangkan `main_*.tex` adalah **naskah Anda**. Bila hasilnya berbeda dari pedoman ITK, dokumentasikan perbedaannya dahulu sebelum mengubah class.

---

**Satu kebiasaan terbaik:** tulis sedikit → kompilasi → periksa PDF → lanjutkan. Panduan ini adalah alat bantu belajar, sedangkan persyaratan akademik tetap mengikuti ketentuan resmi ITK.
