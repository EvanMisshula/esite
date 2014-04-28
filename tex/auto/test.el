(TeX-add-style-hook "test"
 (lambda ()
    (LaTeX-add-bibliographies
     "citations")
    (TeX-run-style-hooks
     "eprint=false"
     "doi=true"
     "url=false"
     "natbib=true"
     "style=authoryear-icomp"
     "backend=biber"
     "csquotes"
     "autostyle"
     "biblatex"
     "sorting=nty"
     "citestyle=alphabetic"
     "maxbibnames=99"
     "style=authoryear"
     "latex2e"
     "art10"
     "article"
     "")))

