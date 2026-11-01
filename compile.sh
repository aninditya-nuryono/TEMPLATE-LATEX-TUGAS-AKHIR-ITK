#!/usr/bin/env bash
# ==============================================================================
# 🚀 Smart Compilation Script (compile.sh) - Template LaTeX TA ITK 2025
# Mendukung kompilasi 4-pass otomatis (pdflatex + bibtex + pdflatex x2),
# pembersihan file sementara (--clean), mode senyap (--quiet), & multi-target.
# ==============================================================================
set -e

TARGET="all"
QUIET=0
CLEAN_ONLY=0
AUTO_CLEAN=0

show_help() {
    cat << EOF
Penggunaan: ./compile.sh [OPSI] [TARGET]

Target Dokumen:
  skripsi       Kompilasi main_skripsi.tex -> Contoh_Hasil_TA_Skripsi_ITK_2025.pdf
  proyek        Kompilasi main_proyek.tex  -> Contoh_Hasil_TA_Proyek_ITK_2025.pdf
  prototipe     Kompilasi main_prototipe.tex -> Contoh_Hasil_TA_Prototipe_ITK_2025.pdf
  artikel       Kompilasi main_artikel_ilmiah.tex -> Contoh_Hasil_Artikel_Ilmiah_TA_ITK_2025.pdf
  all           Kompilasi seluruh dokumen di atas (default)

Opsi:
  -q, --quiet       Mode senyap (hanya menampilkan status akhir)
  -c, --clean       Hapus seluruh file sementara (.aux, .log, .bbl, .blg, .toc, dll.)
  -a, --auto-clean  Kompilasi dokumen lalu otomatis bersihkan file sementara
  -h, --help        Tampilkan pesan bantuan ini
EOF
}

clean_aux() {
    rm -f *.aux *.bbl *.blg *.fdb_latexmk *.fls *.lof *.log *.lot *.nav *.out *.snm *.synctex.gz *.toc *.xdv
    [ "$QUIET" -eq 0 ] && echo "🧹 File sementara LaTeX berhasil dibersihkan."
}

while [[ $# -gt 0 ]]; do
    case "$1" in
        skripsi|proyek|prototipe|artikel|all)
            TARGET="$1"
            shift
            ;;
        -q|--quiet)
            QUIET=1
            shift
            ;;
        -c|--clean)
            CLEAN_ONLY=1
            shift
            ;;
        -a|--auto-clean)
            AUTO_CLEAN=1
            shift
            ;;
        -h|--help)
            show_help
            exit 0
            ;;
        *)
            echo "❌ Opsi tidak dikenal: $1"
            show_help
            exit 1
            ;;
    esac
done

if [ "$CLEAN_ONLY" -eq 1 ]; then
    clean_aux
    exit 0
fi

build_doc() {
    local base="$1"
    local outpdf="$2"
    [ "$QUIET" -eq 0 ] && echo "🔨 Mengompilasi $base.tex -> $outpdf ..."
    if [ "$QUIET" -eq 1 ]; then
        pdflatex -interaction=nonstopmode "$base.tex" >/dev/null
        bibtex "$base" >/dev/null || true
        pdflatex -interaction=nonstopmode "$base.tex" >/dev/null
        pdflatex -interaction=nonstopmode "$base.tex" >/dev/null
    else
        pdflatex -interaction=nonstopmode "$base.tex" >/dev/null
        bibtex "$base" >/dev/null || true
        pdflatex -interaction=nonstopmode "$base.tex" >/dev/null
        pdflatex -interaction=nonstopmode "$base.tex" >/dev/null
    fi
    if [ -f "$base.pdf" ]; then
        mv "$base.pdf" "$outpdf"
        [ "$QUIET" -eq 0 ] && echo "✅ Berhasil: $outpdf"
    else
        echo "❌ Gagal mengompilasi $base.tex"
        exit 1
    fi
}

case "$TARGET" in
    skripsi)
        build_doc "main_skripsi" "Contoh_Hasil_TA_Skripsi_ITK_2025.pdf"
        ;;
    proyek)
        build_doc "main_proyek" "Contoh_Hasil_TA_Proyek_ITK_2025.pdf"
        ;;
    prototipe)
        build_doc "main_prototipe" "Contoh_Hasil_TA_Prototipe_ITK_2025.pdf"
        ;;
    artikel)
        build_doc "main_artikel_ilmiah" "Contoh_Hasil_Artikel_Ilmiah_TA_ITK_2025.pdf"
        ;;
    all)
        build_doc "main_skripsi" "Contoh_Hasil_TA_Skripsi_ITK_2025.pdf"
        build_doc "main_proyek" "Contoh_Hasil_TA_Proyek_ITK_2025.pdf"
        build_doc "main_prototipe" "Contoh_Hasil_TA_Prototipe_ITK_2025.pdf"
        build_doc "main_artikel_ilmiah" "Contoh_Hasil_Artikel_Ilmiah_TA_ITK_2025.pdf"
        ;;
esac

if [ "$AUTO_CLEAN" -eq 1 ]; then
    clean_aux
fi
