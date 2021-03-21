;; emacs -Q --batch -l test.el
(load-file "dotcrafter.el")

(unless (file-exists-p "./demo")
  (make-directory "./demo"))

(setq dotcrafter-output-directory (expand-file-name "./demo"))

(dotcrafter-link-extra-files)
