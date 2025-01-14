;; -*- lexical-binding: t; -*-
(setq package-user-dir "~/.emacs.d/elpa")
(message "Current directory: %s" default-directory)
(require 'package)
(package-refresh-contents)

(message "\nInstall Loopy from tar file:")
(let ((tar-files (directory-files (expand-file-name "loopy/" default-directory)
                                  t
                                  "\\`loopy-.*?.tar\\'")))
  (cl-assert (= 1 (length tar-files)))
  (package-install-file (cl-first tar-files)))

(message "\nInstall from file:\n")
(package-install-file (expand-file-name "loopy-dash.el" default-directory))
