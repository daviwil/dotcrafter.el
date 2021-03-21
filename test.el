;; Run this script with: emacs -Q --batch -l test.el
(load-file "dotcrafter.el")

;; TODO: Check for flag to delete output folder first

(setq dotcrafter-dotfiles-folder (expand-file-name "./example"))
(setq dotcrafter-output-directory (expand-file-name "./demo-output"))
(setq dotcrafter-org-files '("Emacs.org" "Desktop.org"))

(dotcrafter-update-dotfiles)
