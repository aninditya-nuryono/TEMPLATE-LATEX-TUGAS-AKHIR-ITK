# Panduan Pemula LaTeX — Tugas Akhir ITK

Panduan ini untuk mahasiswa yang baru pertama kali menggunakan LaTeX.

## Mulai cepat dengan Overleaf
1. Buka https://www.overleaf.com dan buat akun gratis.
2. Unduh paket ZIP lengkap template TA ITK.
3. Pilih **New Project → Upload Project** lalu unggah ZIP.
4. Pilih **Main document** sesuai jenis TA: `main_skripsi.tex`, `main_proyek.tex`, `main_prototipe.tex`, atau `main_artikel_ilmiah.tex`.
5. Edit identitas, judul, pembimbing, abstrak, dan isi dokumen.
6. Klik **Recompile** dan unduh PDF.

## Windows secara offline
Instal MiKTeX (https://miktex.org/download) dan TeXstudio (https://www.texstudio.org). Ekstrak paket, buka file `main_*.tex` yang sesuai, lalu compile. Untuk sitasi, jalankan PDFLaTeX → BibTeX → PDFLaTeX → PDFLaTeX bila diperlukan.

## Struktur penting
- `main_*.tex`: naskah yang diedit
- `itkta2025.cls`: aturan format; jangan diubah sembarangan
- `itkharvard.bst`: gaya daftar pustaka
- `referensi.bib`: database referensi
- `images/`: gambar yang dipanggil dari dokumen

## Contoh dasar
Judul bagian: `\section{Pendahuluan}`
Subbagian: `\subsection{Latar Belakang}`
Persamaan: `\begin{equation} E=mc^2 \end{equation}`

Untuk menambahkan gambar, simpan file di folder `images`, lalu ikuti contoh `\includegraphics` pada dokumen utama. Untuk referensi, tambahkan entri BibTeX ke `referensi.bib` dan gunakan kunci sitasi sesuai contoh template.

## Mengatasi masalah
- PDF gagal: lihat pesan error dan pastikan main document benar.
- Gambar tidak muncul: cek nama file dan path.
- Sitasi `?`: cek kunci BibTeX dan jalankan BibTeX.
- Class tidak ditemukan: pastikan `itkta2025.cls` ikut diunggah.
- Format berubah: jangan mengedit class kecuali memahami dampaknya.

Simpan salinan sebelum mengedit. Cocokkan hasil akhir dengan panduan resmi TA ITK yang berlaku. Jangan unggah naskah atau data sensitif ke repository publik.

**Status:** Panduan tersedia, tetapi paket sumber lengkap belum seluruhnya diunggah ke GitHub.
