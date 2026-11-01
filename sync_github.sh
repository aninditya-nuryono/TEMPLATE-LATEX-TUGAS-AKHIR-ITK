#!/usr/bin/env bash
# ==============================================================================
# 🔄 Skrip Otomatisasi Push / Pull GitHub (Private Repository)
# Template LaTeX Tugas Akhir ITK 2025 (Skripsi, Proyek, Prototipe, Artikel Ilmiah)
# ==============================================================================
set -e

REPO_NAME="${1:-Template-LaTeX-Tugas-Akhir-ITK-2025}"
COMMIT_MSG="${2:-Update dokumen Tugas Akhir ITK 2025}"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "[1/4] Menginisialisasi repository Git lokal..."
    git init
    git branch -M main
fi

if ! git remote | grep -q "^origin$"; then
    if command -v gh >/dev/null 2>&1; then
        echo "[2/4] Membuat Private Repository '$REPO_NAME' di GitHub via GitHub CLI..."
        gh repo create "$REPO_NAME" --private --source=. --remote=origin
    else
        echo "[!] GitHub CLI (gh) belum terinstal. Tambahkan remote URL manual:"
        echo "    git remote add origin https://github.com/USERNAME/$REPO_NAME.git"
        exit 1
    fi
else
    echo "[2/4] Menarik pembaruan terbaru (git pull --rebase origin main)..."
    git pull --rebase origin main || true
fi

echo "[3/4] Menambahkan perubahan dan melakukan commit..."
git add .
git commit -m "$COMMIT_MSG" || echo "Tidak ada perubahan baru untuk di-commit."

echo "[4/4] Mengunggah (push) ke GitHub Private Repository..."
git push -u origin main
echo "✅ Selesai! Sinkronisasi ke GitHub berhasil."
