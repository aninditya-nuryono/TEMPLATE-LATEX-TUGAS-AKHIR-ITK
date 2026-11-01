%% ============================================================================
%% itkta2025.cls
%% Kelas Dokumen LaTeX Resmi Tugas Akhir Institut Teknologi Kalimantan (ITK)
%% Mengacu pada:
%% 1. SK Rektor ITK No. 6887/IT10/AK.07/2025 (Panduan Kepenulisan TA ITK 2025)
%% 2. SK Rektor ITK No. 6886/IT10/AK.07/2025 (Pedoman Pelaksanaan TA ITK 2025)
%% Mendukung 3 Bentuk TA: SKRIPSI, PROYEK, dan PROTOTIPE
%% Mendukung 2 Tahap: PROPOSAL dan LAPORAN
%% ============================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{itkta2025}[2025/10/07 v1.0 Template Resmi Tugas Akhir ITK 2025]

% Opsi default
\newcommand{\@jenista}{SKRIPSI}
\newcommand{\@jenistacamel}{Skripsi}
\newcommand{\@tahapta}{LAPORAN}
\newif\if@isproposal \@isproposalfalse
\newif\if@isrevisiproposal \@isrevisiproposalfalse
\newif\if@isproyek \@isproyekfalse

\DeclareOption{skripsi}{%
  \renewcommand{\@jenista}{SKRIPSI}%
  \renewcommand{\@jenistacamel}{Skripsi}%
}
\DeclareOption{proyek}{%
  \renewcommand{\@jenista}{PROYEK}%
  \renewcommand{\@jenistacamel}{Proyek}%
  \@isproyektrue
}
\DeclareOption{prototipe}{%
  \renewcommand{\@jenista}{PROTOTIPE}%
  \renewcommand{\@jenistacamel}{Prototipe}%
}
\DeclareOption{proposal}{%
  \renewcommand{\@tahapta}{PROPOSAL}%
  \@isproposaltrue
}
\DeclareOption{revisiproposal}{%
  \renewcommand{\@tahapta}{PROPOSAL}%
  \@isproposaltrue
  \@isrevisiproposaltrue
}
\DeclareOption{laporan}{%
  \renewcommand{\@tahapta}{LAPORAN}%
  \@isproposalfalse
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

% Load base class report dengan kertas A4, font 12pt, dan twoside (bolak-balik)
\LoadClass[a4paper,12pt,twoside,openany]{report}

% ============================================================================
% PAKET-PAKET STANDAR
% ============================================================================
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[indonesian]{babel}
\RequirePackage{mathptmx} % Font utama Times New Roman 12pt
\RequirePackage[scaled=0.92]{helvet} % Font Arial/Helvetica untuk Cover
\RequirePackage{courier}

% Margin Mirror sesuai Bab 3.1.d Panduan Kepenulisan TA ITK 2025:
% Inside (inner): 4 cm, Top: 3 cm, Outside (outer): 3 cm, Bottom: 3 cm
% Nomor halaman 1.5 cm dari tepi bawah kertas (footskip = 1.5cm)
\RequirePackage[
  a4paper,
  twoside,
  inner=4cm,
  outer=3cm,
  top=3cm,
  bottom=3cm,
  footskip=1.5cm,
  headheight=15pt,
  headsep=1cm
]{geometry}

\RequirePackage{setspace}
\RequirePackage{indentfirst}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage[titles]{tocloft}
\RequirePackage{graphicx}
\RequirePackage{tikz}
\usetikzlibrary{shapes.geometric, arrows.meta, positioning, calc}
\RequirePackage{eso-pic}
\RequirePackage{xcolor}
\RequirePackage{booktabs}
\RequirePackage{longtable}
\RequirePackage{tabularx}
\RequirePackage{xltabular}
\RequirePackage{multirow}
\RequirePackage{array}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{amsmath,amssymb,amsfonts}
\RequirePackage{enumitem}
\RequirePackage[round,authoryear,sort]{natbib}
\RequirePackage[hidelinks]{hyperref}

% Warna Identitas Korporat ITK (untuk Cover & Ornamen)
\definecolor{itkblue}{HTML}{0072CE}
\definecolor{itkgold}{HTML}{F5A800}

% ============================================================================
% PENGATURAN PARAGRAF & SPASI (Bab 3.1.b & 3.1.f)
% ============================================================================
\onehalfspacing % Spasi 1.5 untuk seluruh alinea
\setlength{\parindent}{1cm} % Baris pertama menjorok ke dalam 1 cm
\setlength{\parskip}{0pt}
\sloppy % Mencegah teks melewati batas margin kanan (justify rapi)

% ============================================================================
% PENGATURAN WATERMARK ITK (Bab 3.1.e)
% Opacity 30%, scale relative to page 80%, tampil di setiap halaman
% kecuali LEMBAR PENGESAHAN.
% ============================================================================
\newif\if@showwatermark \@showwatermarktrue
\newcommand{\nowatermarkthispage}{\global\@showwatermarkfalse}

\AddToShipoutPictureBG{%
  \if@showwatermark
    \begin{tikzpicture}[remember picture, overlay]
      \node[opacity=0.30, inner sep=0pt] at (current page.center) {%
        \IfFileExists{images/logo_itk_watermark.png}{%
          \includegraphics[width=0.65\textwidth, keepaspectratio]{images/logo_itk_watermark.png}%
        }{%
          \begin{tikzpicture}[scale=2.2]
            \draw[itkblue, line width=3pt] (-1.5,-1.2) .. controls (-0.5,-0.9) and (0.5,-0.9) .. (1.5,-1.2);
            \draw[itkblue, line width=2pt] (-1.3,-1.45) .. controls (-0.4,-1.2) and (0.4,-1.2) .. (1.3,-1.45);
            \draw[itkblue, line width=2pt] (0,-1.35) circle (0.12);
            \draw[itkgold, line width=3.5pt] (-0.15,-0.8) .. controls (-0.7,0.2) and (-0.6,1.2) .. (-0.1,1.9);
            \draw[itkgold, line width=3.5pt] (0.15,-0.8) .. controls (0.7,0.2) and (0.6,1.2) .. (0.1,1.9);
            \draw[itkblue, line width=3.5pt] (-0.35,-0.85) .. controls (-1.1,0.1) and (-0.9,1.1) .. (-0.35,1.75);
            \draw[itkblue, line width=3.5pt] (0.35,-0.85) .. controls (1.1,0.1) and (0.9,1.1) .. (0.35,1.75);
            \draw[itkblue, line width=3pt] (-0.5,-0.85) .. controls (-1.6,-0.9) and (-1.6,0.5) .. (-0.9,0.5) .. controls (-0.5,0.5) and (-0.6,-0.2) .. (-1.1,-0.2);
            \draw[itkblue, line width=3pt] (0.5,-0.85) .. controls (1.6,-0.9) and (1.6,0.5) .. (0.9,0.5) .. controls (0.5,0.5) and (0.6,-0.2) .. (1.1,-0.2);
            \node[font=\sffamily\bfseries\small, text=itkblue] at (0,-1.85) {INSTITUT TEKNOLOGI};
            \node[font=\sffamily\bfseries\small, text=itkgold] at (0,-2.2) {K A L I M A N T A N};
          \end{tikzpicture}%
        }%
      };
    \end{tikzpicture}%
  \else
    \global\@showwatermarktrue
  \fi
}

% ============================================================================
% VARIABEL METADATA TUGAS AKHIR
% ============================================================================
\newcommand{\judulid}[1]{\def\@judulid{#1}}
\newcommand{\judulen}[1]{\def\@judulen{#1}}
\newcommand{\penulis}[1]{\def\@penulis{#1}}
\newcommand{\nim}[1]{\def\@nim{#1}}
\newcommand{\prodi}[1]{\def\@prodi{#1}}
\newcommand{\jurusan}[1]{\def\@jurusan{#1}}
\newcommand{\fakultas}[1]{\def\@fakultas{#1}}
\newcommand{\kodefakultas}[1]{\def\@kodefakultas{#1}}
\newcommand{\gelar}[1]{\def\@gelar{#1}}
\newcommand{\tanggal}[1]{\def\@tanggal{#1}}
\newcommand{\bulan}[1]{\def\@bulan{#1}}
\newcommand{\tahun}[1]{\def\@tahun{#1}}
\newcommand{\kaprodi}[1]{\def\@kaprodi{#1}}

\newcommand{\pembimbingsatu}[2]{\def\@pembimbingsatu{#1}\def\@nippembimbingsatu{#2}}
\newcommand{\pembimbingdua}[2]{\def\@pembimbingdua{#1}\def\@nippembimbingdua{#2}}
\newcommand{\pengujisatu}[2]{\def\@pengujisatu{#1}\def\@nippengujisatu{#2}}
\newcommand{\pengujidua}[2]{\def\@pengujidua{#1}\def\@nippengujidua{#2}}

\newcommand{\ttl}[1]{\def\@ttl{#1}}
\newcommand{\alamat}[1]{\def\@alamat{#1}}
\newcommand{\email}[1]{\def\@email{#1}}
\newcommand{\riwayatpendidikan}[3]{\def\@sd{#1}\def\@smp{#2}\def\@sma{#3}}
\newcommand{\tahunmasuk}[1]{\def\@tahunmasuk{#1}}

% Nilai Default
\judulid{JUDUL TUGAS AKHIR DALAM BAHASA INDONESIA}
\judulen{FINAL PROJECT TITLE IN ENGLISH}
\penulis{Nama Lengkap Mahasiswa}
\nim{11211001}
\prodi{Teknik Informatika}
\jurusan{Teknik Elektro, Informatika, dan Bisnis}
\fakultas{Sains dan Teknologi Informasi}
\kodefakultas{FSTI}
\gelar{Sarjana Komputer (S.Kom.)}
\tanggal{27}
\bulan{Oktober}
\tahun{2025}
\kaprodi{Nama Koordinator Prodi, S.T., M.T.}
\pembimbingsatu{Nama Pembimbing Utama, S.T., M.T.}{199001012019031001}
\pembimbingdua{Nama Pembimbing Pendamping, S.Kom., M.Kom.}{199202022020121002}
\pengujisatu{Nama Dosen Penguji I, S.T., M.Eng.}{199103032018031003}
\pengujidua{Nama Dosen Penguji II, S.Si., M.Cs.}{199304042021122004}
\ttl{Balikpapan, 31 Januari 2003}
\alamat{Jl. Soekarno Hatta KM 15, Karang Joang, Balikpapan}
\email{11211001@student.itk.ac.id}
\riwayatpendidikan{SD Negeri 001 Balikpapan (2009--2015)}{SMP Negeri 2 Balikpapan (2015--2018)}{SMA Negeri 1 Balikpapan (2018--2021)}
\tahunmasuk{2021}

% ============================================================================
% PENGATURAN HEADER DAN FOOTER (Bab 3.1.g & Bab 3.4)
% Header: dikosongkan pada seluruh halaman
% Footer: Nomor halaman di kanan bawah kertas (1.5 cm dari tepi bawah)
% ============================================================================
\fancypagestyle{plain}{%
  \fancyhf{}
  % Header kiri sengaja dikosongkan.
  \fancyfoot[R]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}

\fancypagestyle{itkmain}{%
  \fancyhf{}
  % Header kiri sengaja dikosongkan.
  \fancyfoot[R]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\pagestyle{itkmain}

% ============================================================================
% PENGATURAN FORMAT BAB, SUB-BAB, DAN SUB-SUB-BAB (Bab 3.3)
% - Bab: Halaman baru, angka Arab (BAB 1), Huruf Kapital, Center, 14pt Bold
% - Sub-bab (1.1) & Sub-sub-bab (1.1.1): Rata kiri, angka Arab, 12pt Bold
% ============================================================================
\newcommand{\itkfontsizechap}{\fontsize{14pt}{16.8pt}\selectfont\bfseries}
\newcommand{\itkfontsizesec}{\fontsize{12pt}{14.4pt}\selectfont\bfseries}

\titleformat{\chapter}[display]
  {\itkfontsizechap\centering}
  {BAB \thechapter}
  {0pt}
  {\uppercase}
\titlespacing*{\chapter}{0pt}{-20pt}{18pt}

\titleformat{\section}
  {\itkfontsizesec}
  {\thesection}
  {1em}
  {}
\titlespacing*{\section}{0pt}{12pt}{6pt}

\titleformat{\subsection}
  {\itkfontsizesec}
  {\thesubsection}
  {1em}
  {}
\titlespacing*{\subsection}{0pt}{10pt}{4pt}

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

% ============================================================================
% PENGATURAN DAFTAR ISI, DAFTAR GAMBAR, DAFTAR TABEL (Bab 3.4 & Template)
% ============================================================================
\renewcommand{\contentsname}{DAFTAR ISI}
\renewcommand{\listfigurename}{DAFTAR GAMBAR}
\renewcommand{\listtablename}{DAFTAR TABEL}
\renewcommand{\figurename}{Gambar}
\renewcommand{\tablename}{Tabel}
\AtBeginDocument{%
  \renewcommand{\contentsname}{DAFTAR ISI}%
  \renewcommand{\listfigurename}{DAFTAR GAMBAR}%
  \renewcommand{\listtablename}{DAFTAR TABEL}%
  \renewcommand{\figurename}{Gambar}%
  \renewcommand{\tablename}{Tabel}%
  \renewcommand{\bibname}{DAFTAR PUSTAKA}%
}
\addto\captionsindonesian{%
  \renewcommand{\contentsname}{DAFTAR ISI}%
  \renewcommand{\listfigurename}{DAFTAR GAMBAR}%
  \renewcommand{\listtablename}{DAFTAR TABEL}%
  \renewcommand{\figurename}{Gambar}%
  \renewcommand{\tablename}{Tabel}%
  \renewcommand{\bibname}{DAFTAR PUSTAKA}%
}

\setlength{\cftbeforechapskip}{2pt}
\setlength{\cftbeforesecskip}{1pt}
\setlength{\cftbeforesubsecskip}{1pt}
\renewcommand{\cftchapfont}{\normalfont\bfseries}
\renewcommand{\cftchappagefont}{\normalfont\bfseries}
\renewcommand{\cftchappresnum}{BAB }
\renewcommand{\cftchapaftersnum}{\space}
\setlength{\cftchapnumwidth}{4.2em}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}

\renewcommand{\cftsecfont}{\normalfont}
\renewcommand{\cftsecpagefont}{\normalfont}
\renewcommand{\cftsubsecfont}{\normalfont}
\renewcommand{\cftsubsecpagefont}{\normalfont}

\renewcommand{\cftfigpresnum}{Gambar }
\setlength{\cftfignumwidth}{6.2em}
\renewcommand{\cfttabpresnum}{Tabel }
\setlength{\cfttabnumwidth}{5.5em}

% ============================================================================
% PENGATURAN TABEL, GAMBAR, DAN PERSAMAAN (Bab 3.5 & Bab 3.6)
% - Nomor gambar & tabel didahului nomor bab (Gambar 2.1, Tabel 2.1)
% - Spasi caption = 1 (single spacing), rata tengah (center)
% - Nomor persamaan didahului nomor bab rata kanan: (2.1)
% ============================================================================
\renewcommand{\thefigure}{\thechapter.\arabic{figure}}
\renewcommand{\thetable}{\thechapter.\arabic{table}}
\renewcommand{\theequation}{\thechapter.\arabic{equation}}

\DeclareCaptionLabelSeparator{itksep}{~}
\captionsetup{
  font={normalsize,singlespacing},
  labelfont={bf},
  labelsep=itksep,
  justification=centering,
  singlelinecheck=true
}
\captionsetup[table]{position=top, skip=6pt}
\captionsetup[figure]{position=bottom, skip=6pt}

% Helper untuk sumber tabel dan gambar (Bab 3.5.i)
\newcommand{\sumbertabel}[1]{%
  \vspace{2pt}
  \begin{flushleft}
    \singlespacing\footnotesize #1
  \end{flushleft}
}

% ============================================================================
% PENGATURAN SITASI & DAFTAR PUSTAKA HARVARD STYLE (Bab 3.7)
% - 2 penulis: (Isfaroiny dan Mitarlis, 2005)
% - >2 penulis: (Bhatia dkk, 2008)
% - Baris kedua menjorok 1.27 cm (hanging indent 1.27cm), urut abjad tanpa nomor
% ============================================================================
\bibpunct{(}{)}{;}{a}{,}{,}
\setlength{\bibhang}{1.27cm}
\setlength{\bibsep}{6pt}

% Perintah bantu untuk halaman bagian awal tanpa nomor bab
\newcommand{\frontchapter}[1]{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{#1}%
  \begin{center}
    {\itkfontsizechap\MakeUppercase{#1}\par}
  \end{center}
  \vspace{12pt}
}

% ============================================================================
% 1. HALAMAN SAMPUL LUAR & SAMPUL DALAM (Sesuai COVER TA ITK FIX - LOGO BARU)
% Menggunakan pemosisian absolut TikZ (overlay) & font Arial (Helvetica)
% agar 100% bebas tumpang tindih (zero overlap) dan tidak pernah meluap halaman.
% ============================================================================
\newcommand{\makecover}{%
  % --- SAMPUL LUAR (Halaman 1 Cover) ---
  \clearpage
  \nowatermarkthispage
  \thispagestyle{empty}
  \mbox{}%
  \begin{tikzpicture}[remember picture, overlay]
    \IfFileExists{images/cover_bg_1.png}{%
      \node[inner sep=0pt] at (current page.center) {%
        \includegraphics[width=\paperwidth,height=\paperheight]{images/cover_bg_1.png}%
      };
    }{%
      \fill[itkblue] (current page.north west) rectangle ([yshift=-6.34cm]current page.north east);
      \fill[itkgold] (current page.north west) rectangle ([xshift=3cm,yshift=-6.34cm]current page.north west);
      \node[text=white, font=\sffamily\bfseries\Large, align=center] at ([yshift=-3.2cm]current page.north) {INSTITUT TEKNOLOGI KALIMANTAN};
      \fill[itkblue] ([yshift=1.0cm]current page.south west) rectangle (current page.south east);
      \fill[itkgold] ([yshift=1.0cm]current page.south west) rectangle ([xshift=3cm]current page.south west);
    }

    % Jenis Dokumen & Bentuk TA (Arial Bold 16pt)
    \node[anchor=north, text width=15cm, align=center] at ([yshift=-7.6cm]current page.north) {%
      \fontfamily{phv}\selectfont\singlespacing
      {\fontsize{16pt}{20pt}\selectfont\bfseries \@tahapta\par}
      \vspace{4pt}
      {\fontsize{16pt}{20pt}\selectfont\bfseries TUGAS AKHIR \@jenista\par}
    };

    % Judul Tugas Akhir (Arial Bold 16pt, Center, Multi-line Safe)
    \node[anchor=center, text width=14.5cm, align=center] at ([yshift=-13.2cm]current page.north) {%
      \fontfamily{phv}\selectfont\singlespacing
      {\fontsize{16pt}{21pt}\selectfont\bfseries \MakeUppercase{\@judulid}\par}
    };

    % Nama Mahasiswa & NIM (Arial Bold 12pt & Regular 12pt)
    \node[anchor=north, text width=14cm, align=center] at ([yshift=-17.8cm]current page.north) {%
      \fontfamily{phv}\selectfont\singlespacing
      {\fontsize{12pt}{16pt}\selectfont\bfseries \MakeUppercase{\@penulis}\par}
      \vspace{2pt}
      {\fontsize{12pt}{16pt}\selectfont \@nim\par}
    };

    % Identitas Prodi, Jurusan, Fakultas, ITK, Tahun (Arial 12pt)
    \node[anchor=south, text width=15cm, align=center] at ([yshift=2.4cm]current page.south) {%
      \fontfamily{phv}\selectfont\singlespacing
      {\fontsize{12pt}{16pt}\selectfont
        PROGRAM STUDI \MakeUppercase{\@prodi}\par
        Jurusan \@jurusan\par
        Fakultas \@fakultas\par
        Institut Teknologi Kalimantan\par
        Balikpapan, \@tahun\par
      }
    };
  \end{tikzpicture}
  \clearpage

  % --- SAMPUL DALAM (Halaman 2 Cover) ---
  \clearpage
  \nowatermarkthispage
  \thispagestyle{empty}
  \mbox{}%
  \begin{tikzpicture}[remember picture, overlay]
    \IfFileExists{images/cover_bg_2.png}{%
      \node[inner sep=0pt] at (current page.center) {%
        \includegraphics[width=\paperwidth,height=\paperheight]{images/cover_bg_2.png}%
      };
    }{%
      \fill[itkblue] (current page.north west) rectangle ([yshift=-1.0cm]current page.north east);
      \fill[itkgold] (current page.north west) rectangle ([xshift=3cm,yshift=-1.0cm]current page.north west);
      \fill[itkblue] ([yshift=1.0cm]current page.south west) rectangle (current page.south east);
      \fill[itkgold] ([yshift=1.0cm]current page.south west) rectangle ([xshift=3cm]current page.south west);
    }

    % Jenis Dokumen & Bentuk TA (Arial Bold 16pt)
    \node[anchor=north, text width=15cm, align=center] at ([yshift=-7.6cm]current page.north) {%
      \fontfamily{phv}\selectfont\singlespacing
      {\fontsize{16pt}{20pt}\selectfont\bfseries \@tahapta\par}
      \vspace{4pt}
      {\fontsize{16pt}{20pt}\selectfont\bfseries TUGAS AKHIR \@jenista\par}
    };

    % Judul Tugas Akhir (Arial Bold 16pt)
    \node[anchor=center, text width=14.5cm, align=center] at ([yshift=-12.2cm]current page.north) {%
      \fontfamily{phv}\selectfont\singlespacing
      {\fontsize{16pt}{21pt}\selectfont\bfseries \MakeUppercase{\@judulid}\par}
    };

    % Peruntukan Gelar (Arial 12pt)
    \node[anchor=north, text width=14cm, align=center] at ([yshift=-15.2cm]current page.north) {%
      \fontfamily{phv}\selectfont\singlespacing
      {\fontsize{12pt}{15pt}\selectfont Disusun untuk memenuhi salah satu syarat kelulusan memperoleh Gelar \@gelar\par}
    };

    % Nama Mahasiswa & NIM (Arial Bold 12pt & Regular 12pt)
    \node[anchor=north, text width=14cm, align=center] at ([yshift=-17.2cm]current page.north) {%
      \fontfamily{phv}\selectfont\singlespacing
      {\fontsize{12pt}{16pt}\selectfont\bfseries \MakeUppercase{\@penulis}\par}
      \vspace{2pt}
      {\fontsize{12pt}{16pt}\selectfont \@nim\par}
    };

    % Dosen Pembimbing (Arial 12pt & Bold 12pt)
    \node[anchor=north, text width=15cm, align=center] at ([yshift=-19.4cm]current page.north) {%
      \fontfamily{phv}\selectfont\singlespacing
      {\fontsize{12pt}{15pt}\selectfont Dosen Pembimbing\par}
      \vspace{4pt}
      {\fontsize{12pt}{16pt}\selectfont\bfseries \@pembimbingsatu\par}
      \vspace{2pt}
      {\fontsize{12pt}{16pt}\selectfont\bfseries \@pembimbingdua\par}
    };

    % Identitas Prodi, Jurusan, Fakultas, ITK, Tahun (Arial 12pt)
    \node[anchor=south, text width=15cm, align=center] at ([yshift=2.2cm]current page.south) {%
      \fontfamily{phv}\selectfont\singlespacing
      {\fontsize{12pt}{16pt}\selectfont
        PROGRAM STUDI \MakeUppercase{\@prodi}\par
        Jurusan \@jurusan\par
        Fakultas \@fakultas\par
        Institut Teknologi Kalimantan\par
        Balikpapan, \@tahun\par
      }
    };
  \end{tikzpicture}
  \clearpage
}

% ============================================================================
% 2. PERNYATAAN ORISINALITAS TUGAS AKHIR
% ============================================================================
\newcommand{\makeorisinalitas}{%
  \frontchapter{PERNYATAAN ORISINALITAS TUGAS AKHIR}
  \noindent Dengan ini saya menyatakan bahwa isi sebagian maupun keseluruhan Tugas Akhir saya dengan judul \textbf{\@judulid} adalah benar-benar hasil karya intelektual mandiri, diselesaikan tanpa menggunakan bahan-bahan yang tidak diizinkan dan bukan merupakan karya pihak lain yang saya akui sebagai karya sendiri. Semua referensi yang dikutip maupun dirujuk telah ditulis secara lengkap pada daftar pustaka. Apabila ternyata pernyataan ini tidak benar, saya bersedia menerima sanksi sesuai peraturan yang berlaku.\par
  \vspace{2cm}
  \begin{flushright}
    \begin{minipage}{7.5cm}
      \centering
      Balikpapan, \@tanggal\ \@bulan\ \@tahun\\[0.8cm]
      \fbox{\parbox[c][1.8cm][c]{3.2cm}{\centering\footnotesize Materai\\Rp 10.000}}\\[0.8cm]
      \textbf{\@penulis}\\
      NIM. \@nim
    \end{minipage}
  \end{flushright}
}

% ============================================================================
% 3. PERNYATAAN PERSETUJUAN PUBLIKASI TUGAS AKHIR UNTUK KEPENTINGAN AKADEMIS
% ============================================================================
\newcommand{\makepublikasi}{%
  \frontchapter{PERNYATAAN PERSETUJUAN PUBLIKASI TUGAS AKHIR UNTUK KEPENTINGAN AKADEMIS}
  \noindent Sebagai sivitas akademik Institut Teknologi Kalimantan, saya yang bertanda tangan di bawah ini:\par
  \vspace{6pt}
  \noindent\begin{tabular}{@{}p{3.8cm}@{ : }p{10cm}@{}}
    Nama          & \@penulis \\
    NIM           & \@nim \\
    Program Studi & \@prodi \\
    Jurusan       & \@jurusan \\
    Fakultas      & \@fakultas
  \end{tabular}\par
  \vspace{6pt}
  \noindent demi pengembangan ilmu pengetahuan, menyetujui untuk memberikan kepada Institut Teknologi Kalimantan Hak Bebas Royalti Non-eksklusif (\textit{Non-exclusive Royalty Free Right}) atas karya ilmiah saya yang berjudul:\par
  \vspace{6pt}
  \begin{center}
    \singlespacing
    \noindent\dotfill\par
    \vspace{2pt}
    \noindent\dotfill\ \textbf{\@judulid}\ \dotfill\par
    \vspace{2pt}
    \noindent\dotfill\par
  \end{center}
  \vspace{6pt}
  \noindent beserta perangkat yang ada (jika diperlukan). Dengan Hak Bebas Royalti Non-eksklusif ini, Institut Teknologi Kalimantan berhak menyimpan, mengalihmediakan, mengelola dalam bentuk pangkalan data (\textit{database}), merawat, dan memublikasikan tugas akhir saya selama tetap mencantumkan nama saya sebagai penulis/pencipta dan sebagai pemilik Hak Cipta.\par
  \vspace{10pt}
  \noindent Demikian pernyataan ini saya buat dengan sebenarnya.\par
  \vspace{1.8cm}
  \begin{flushright}
    \begin{minipage}{7cm}
      \centering
      Balikpapan, \@tanggal\ \@bulan\ \@tahun\\[2.2cm]
      \textbf{\@penulis}\\
      NIM. \@nim
    \end{minipage}
  \end{flushright}
}

% ============================================================================
% 4A. LEMBAR PERSETUJUAN PROPOSAL TA (Pengajuan & Revisi Proposal)
% ============================================================================
\newcommand{\makepersetujuanproposal}{%
  \frontchapter{LEMBAR PERSETUJUAN}
  \begin{center}
    \singlespacing
    Proposal Tugas Akhir dengan judul:\\[10pt]
    {\itkfontsizechap ``\MakeUppercase{\@judulid}''}\\[14pt]
    Yang disusun oleh:\\[2cm]
    \textbf{\@penulis}\\
    NIM. \@nim\\[18pt]
    \if@isrevisiproposal
      Telah diperiksa dan disetujui oleh tim penguji:\\[18pt]
      \begin{tabular}{@{}p{6.5cm}p{6.5cm}@{}}
        \centering Dosen Pembimbing Utama & \centering\arraybackslash Dosen Pembimbing Pendamping \\[2.2cm]
        \centering \textbf{\@pembimbingsatu} & \centering\arraybackslash \textbf{\@pembimbingdua} \\
        \centering NIP./NIPH. \@nippembimbingsatu & \centering\arraybackslash NIP./NIPH. \@nippembimbingdua \\[1.2cm]
        \centering Dosen Penguji I & \centering\arraybackslash Dosen Penguji II \\[2.2cm]
        \centering \textbf{\@pengujisatu} & \centering\arraybackslash \textbf{\@pengujidua} \\
        \centering NIP./NIPH. \@nippengujisatu & \centering\arraybackslash NIP./NIPH. \@nippengujidua
      \end{tabular}
    \else
      Telah diperiksa dan disetujui oleh dosen pembimbing:\\[18pt]
      \begin{tabular}{@{}p{6.5cm}p{6.5cm}@{}}
        \centering Dosen Pembimbing Utama & \centering\arraybackslash Dosen Pembimbing Pendamping \\[2.2cm]
        \centering \textbf{\@pembimbingsatu} & \centering\arraybackslash \textbf{\@pembimbingdua} \\
        \centering NIP./NIPH. \@nippembimbingsatu & \centering\arraybackslash NIP./NIPH. \@nippembimbingdua
      \end{tabular}
    \fi
  \end{center}
}

% ============================================================================
% 4B. LEMBAR PENGESAHAN LAPORAN TA (TANPA WATERMARK sesuai Bab 3.1.e)
% ============================================================================
\newcommand{\makepengeshan}{%
  \clearpage
  \nowatermarkthispage
  \phantomsection
  \addcontentsline{toc}{chapter}{LEMBAR PENGESAHAN}%
  \begin{center}
    \singlespacing
    {\itkfontsizechap LEMBAR PENGESAHAN\\TUGAS AKHIR}\\[12pt]
    Disusun untuk memenuhi syarat memperoleh gelar\\
    \@gelar\\
    pada\\
    Program Studi S-1 \@prodi\\
    Jurusan \@jurusan\\
    Fakultas \@fakultas\\
    Institut Teknologi Kalimantan\\[14pt]
    Judul Tugas Akhir:\\[10pt]
    {\itkfontsizechap \MakeUppercase{\@judulid}}\\[14pt]
    Oleh:\\[4pt]
    \textbf{\@penulis}\\
    NIM. \@nim\\[18pt]
    Disetujui oleh Tim Penguji Tugas Akhir:\\[12pt]
    \renewcommand{\arraystretch}{2.2}
    \if@isproyek
      \begin{tabular}{@{}p{0.6cm}p{6.2cm}p{4.4cm}p{2.3cm}@{}}
        1. & \@pembimbingsatu & Pembimbing Utama      & \dotfill \\
        2. & \@pembimbingdua  & Pembimbing Pendamping & \dotfill \\
        3. & \@pengujisatu    & Penguji I             & \dotfill \\
        4. & \@pengujidua     & Penguji II            & \dotfill \\
      \end{tabular}
    \else
      \begin{tabular}{@{}p{0.6cm}p{6.8cm}p{3.6cm}p{2.5cm}@{}}
        1. & \@pembimbingsatu & Pembimbing I  & \dotfill \\
        2. & \@pembimbingdua  & Pembimbing II & \dotfill \\
        3. & \@pengujisatu    & Penguji I     & \dotfill \\
        4. & \@pengujidua     & Penguji II    & \dotfill \\
      \end{tabular}
    \fi
    \vfill
    \textbf{BALIKPAPAN}\\
    \textbf{\MakeUppercase{\@bulan}, \@tahun}
  \end{center}
}

% ============================================================================
% 5. ENVIRONMENT ABSTRAK (BAHASA INDONESIA) & ABSTRACT (BAHASA INGGRIS)
% Spasi 1 (single spacing), 1 paragraf (200-350 kata), maksimal 5 kata kunci
% ============================================================================
\newenvironment{abstrakid}[1]{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{ABSTRAK}%
  \def\@katakunciid{#1}%
  \begin{center}
    \singlespacing
    {\itkfontsizechap \MakeUppercase{\@judulid}}\par
  \end{center}
  \vspace{8pt}
  {\singlespacing\noindent
  \begin{tabular}{@{}p{5.2cm}@{ : }p{8.2cm}@{}}
    Nama Mahasiswa              & \@penulis \\
    NIM                         & \@nim \\
    Dosen Pembimbing Utama      & \@pembimbingsatu \\
    Dosen Pembimbing Pendamping & \@pembimbingdua
  \end{tabular}\par}
  \vspace{14pt}
  \begin{center}
    {\itkfontsizechap ABSTRAK\par}
  \end{center}
  \vspace{6pt}
  \begingroup
  \singlespacing
}{%
  \par\endgroup
  \vspace{12pt}
  {\singlespacing\noindent\textbf{Kata kunci}: \@katakunciid\par}
}

\newenvironment{abstraken}[1]{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{ABSTRACT}%
  \def\@katakuncien{#1}%
  \begin{center}
    \singlespacing
    {\itkfontsizechap \MakeUppercase{\@judulen}}\par
  \end{center}
  \vspace{8pt}
  {\singlespacing\noindent
  \begin{tabular}{@{}p{5.2cm}@{ : }p{8.2cm}@{}}
    By                      & \@penulis \\
    Student Identity Number & \@nim \\
    Supervisor              & \@pembimbingsatu \\
    Co-Supervisor           & \@pembimbingdua
  \end{tabular}\par}
  \vspace{14pt}
  \begin{center}
    {\itkfontsizechap ABSTRACT\par}
  \end{center}
  \vspace{6pt}
  \begingroup
  \singlespacing
}{%
  \par\endgroup
  \vspace{12pt}
  {\singlespacing\noindent\textbf{Keywords}: \@katakuncien\par}
}

% ============================================================================
% 6. DAFTAR ISI, DAFTAR GAMBAR, DAFTAR TABEL, DAN DAFTAR NOTASI
% ============================================================================
\newcommand{\makedaftarisi}{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{DAFTAR ISI}%
  \begin{singlespace}
    \tableofcontents
  \end{singlespace}
}

\newcommand{\makedaftargambar}{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{DAFTAR GAMBAR}%
  \begin{singlespace}
    \listoffigures
  \end{singlespace}
}

\newcommand{\makedaftartabel}{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{DAFTAR TABEL}%
  \begin{singlespace}
    \listoftables
  \end{singlespace}
}

\newenvironment{daftarnotasi}{%
  \frontchapter{DAFTAR NOTASI}
  \begin{singlespace}
  \noindent\begin{tabular}{@{}p{2.5cm}p{8cm}p{3cm}@{}}
    \toprule
    \textbf{Notasi} & \textbf{Keterangan} & \textbf{Satuan} \\
    \midrule
}{%
    \bottomrule
  \end{tabular}
  \end{singlespace}
}

% ============================================================================
% 7. RIWAYAT PENULIS & COVER BELAKANG + PUNGGUNG BUKU (COVER TA ITK FIX)
% ============================================================================
\newcommand{\makeriwayatpenulis}[1]{%
  \frontchapter{RIWAYAT PENULIS}
  \noindent
  \begin{minipage}[t]{3.2cm}
    \vspace{0pt}
    \IfFileExists{images/pasfoto.jpg}{%
      \includegraphics[width=3cm,height=4cm]{images/pasfoto.jpg}%
    }{%
      \fbox{\parbox[c][4cm][c]{3cm}{\centering\small PAS FOTO\\3 $\times$ 4 / 4 $\times$ 6}}
    }
  \end{minipage}\hfill
  \begin{minipage}[t]{10.2cm}
    \vspace{0pt}
    \setlength{\parindent}{0pt}
    #1
  \end{minipage}
}

\newcommand{\makebackcoverandspine}{%
  % --- HALAMAN BIODATA PENULIS (SAMPUL BELAKANG) ---
  \clearpage
  \nowatermarkthispage
  \thispagestyle{empty}
  \mbox{}%
  \begin{tikzpicture}[remember picture, overlay]
    \IfFileExists{images/cover_bg_3.png}{%
      \node[inner sep=0pt] at (current page.center) {%
        \includegraphics[width=\paperwidth,height=\paperheight]{images/cover_bg_3.png}%
      };
    }{%
      \fill[itkblue] (current page.north west) rectangle ([yshift=-4.33cm]current page.north east);
      \fill[itkgold] (current page.north west) rectangle ([xshift=3cm,yshift=-4.33cm]current page.north west);
      \draw[itkgold, line width=1pt] ([xshift=2.92cm,yshift=-5.93cm]current page.north west) rectangle ([xshift=6.93cm,yshift=-11.94cm]current page.north west);
      \node[font=\sffamily\bfseries, align=center] at ([xshift=4.925cm,yshift=-8.935cm]current page.north west) {PAS FOTO\\4 $\times$ 6};
    }

    % Jika file images/pasfoto.jpg ada, tampilkan pas di dalam kotak 4x6
    \IfFileExists{images/pasfoto.jpg}{%
      \node[inner sep=0pt] at ([xshift=4.925cm,yshift=-8.935cm]current page.north west) {%
        \includegraphics[width=3.95cm,height=5.95cm]{images/pasfoto.jpg}%
      };
    }{}

    % Teks Biodata Penulis tepat di bawah kotak Pas Foto 4x6 (Arial 14pt bold & 12pt)
    \node[anchor=north west, text width=15cm, align=left] at ([xshift=2.92cm,yshift=-13.2cm]current page.north west) {%
      \fontfamily{phv}\selectfont\singlespacing
      {\fontsize{14pt}{18pt}\selectfont\bfseries Biodata Penulis\par}
      \vspace{12pt}
      {\fontsize{12pt}{18pt}\selectfont
      \renewcommand{\arraystretch}{1.35}%
      \begin{tabular}{@{}p{4.8cm}@{ : }p{9.5cm}@{}}
        Nama                 & \@penulis \\
        Tempat Tanggal Lahir & \@ttl \\
        Alamat               & \@alamat \\
        Email                & \@email
      \end{tabular}\par}
    };
  \end{tikzpicture}
  \clearpage

  % --- HALAMAN PUNGGUNG BUKU HARDCOVER (SPINE) ---
  \clearpage
  \nowatermarkthispage
  \thispagestyle{empty}
  % Background gambar dipasang pada lapisan halaman, bukan node TikZ.
  % Menghindari clipping gambar di bawah kotak teks overlay.
  \IfFileExists{images/cover_bg_4.png}{%
    \AddToShipoutPictureBG*{\AtPageCenter{\makebox(0,0){\includegraphics[width=\paperwidth,height=\paperheight]{images/cover_bg_4.png}}}}%
  }{}
  \AddToShipoutPictureBG*{\AtPageCenter{%
  \begin{tikzpicture}[remember picture, overlay]
    \IfFileExists{images/cover_bg_4.png}{}{%
      \fill[itkblue] ([xshift=-0.75cm]current page.north) rectangle ([xshift=0.75cm,yshift=-2.09cm]current page.north);
      \fill[itkgold] ([xshift=-0.75cm,yshift=-7.47cm]current page.north) rectangle ([xshift=0.75cm,yshift=-8.2cm]current page.north);
      \fill[itkblue] ([xshift=-0.75cm,yshift=-8.2cm]current page.north) rectangle ([xshift=0.75cm]current page.south);
    }

    % 1. Nama & NIM di area putih atas (y = -3.6 cm s/d -7.2 cm dari atas)
    \node[rotate=-90, text width=3.4cm, align=center, text=black] at ([yshift=-5.4cm]current page.north) {%
      \fontfamily{phv}\selectfont\singlespacing
      \fontsize{7.5pt}{9pt}\selectfont\bfseries \@penulis\\(\@nim)%
    };

    % 2. Judul Tugas Akhir & Bentuk TA di tengah pita biru (y = -8.6 cm s/d -24.5 cm)
    % Diberi text width=14.5cm agar judul yang panjang otomatis membungkus menjadi 2 baris rapi
    % di dalam pita biru selebar 1.5 cm tanpa menabrak area atas maupun bawah.
    \node[rotate=-90, text width=14.5cm, align=center, text=white] at ([yshift=-16.5cm]current page.north) {%
      \fontfamily{phv}\selectfont\singlespacing
      \fontsize{8pt}{10pt}\selectfont\bfseries \MakeUppercase{\@judulid}\\[2pt]
      {\fontsize{7.5pt}{9pt}\selectfont\bfseries (\@jenista)}%
    };

    % 3. Kode Fakultas & Tahun di bagian bawah pita biru (y = 2.4 cm dari bawah)
    \node[rotate=-90, text width=3.5cm, align=center, text=white] at ([yshift=2.4cm]current page.south) {%
      \fontfamily{phv}\selectfont\singlespacing
      \fontsize{8.5pt}{10pt}\selectfont\bfseries \@kodefakultas\ -- \@tahun%
    };
  \end{tikzpicture}%
  }}%
  \mbox{}%
  \clearpage
}
\endinput
