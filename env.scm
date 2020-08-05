(use-modules (guix build-system dune)
             (guix licenses)
             (guix packages))

(package
  (name "ocaml-tensorflow")
  (version "0.1")
  (source (origin
            (method git-fetch)
            (uri (git-reference
                  ;; TODO: use the upstream repo
                  (url "https://github.com/fishyfriend/tensorflow-ocaml")
                  (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1i0hhkrqi7rqlainlg5pc4hibbx6b5dp3x99gmav8c3sbfvlk9mc"))))
  (build-system dune-build-system)
  (propagated-inputs
   `(("ocaml-cmdliner" ,ocaml-cmdliner)
     ;; rest TODO
     ))
  (home-page "https://github.com/LaurentMazare/tensorflow-ocaml")
  (synopsis "OCaml bindings for TensorFlow")
  (description "The tensorflow-ocaml project provides some OCaml bindings for
TensorFlow.")
  (license asl2.0))
