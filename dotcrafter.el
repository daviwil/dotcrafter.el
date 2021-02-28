(defcustom dotcrafter-dotfiles-folder "~/.dotfiles"
  "The folder where dotfiles and org-mode configuration files are stored."
  :type 'string
  :group 'dotfiles)

(defcustom dotcrafter-org-files '()
  "The list of org-mode files under the `dotcrafter-dotfiles-folder'
which contain configuration files that should be tangled"
  :type '(list string)
  :group 'dotfiles)

(defun dotcrafter-tangle-org-file (&optional org-file)
  "Tangles a single .org file relative to the path in
dotfiles-folder.  If no file is specified, tangle the current
file if it is an org-mode buffer inside of dotfiles-folder."
  (interactive)
  ;; Suppress prompts and messages
  (let ((org-confirm-babel-evaluate nil)
        (message-log-max nil)
        (inhibit-message t))
    (org-babel-tangle-file (expand-file-name org-file dotfiles-folder))))

(defun dotcrafter-tangle-org-files ()
  "Tangles all of the .org files in the paths specified by the variable dotfiles-folder"
  (interactive)
  (dolist (org-file dotcrafter-org-files)
    (dotcrafter-tangle-org-file org-file))
  (message "Dotfiles are up to date!"))

(provide 'dotcrafter)
