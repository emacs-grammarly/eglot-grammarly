;;; eglot-grammarly.el --- Eglot Clients for Grammarly  -*- lexical-binding: t; -*-

;; Copyright (C) 2021  Shen, Jen-Chieh
;; Created date 2021-03-04 11:34:54

;; Author: Shen, Jen-Chieh <jcs090218@gmail.com>
;; Description: Eglot Clients for Grammarly
;; Keyword: eglot grammarly checker
;; Version: 0.0.1
;; Package-Requires: ((emacs "24.3") (eglot "1.4"))
;; URL: https://github.com/emacs-grammarly/eglot-grammarly

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Eglot server implementation for Grammarly
;;

;;; Code:

(require 'eglot)

(defgroup eglot-grammarly nil
  "Settings for the Grammarly Language Server.

Link: https://github.com/znck/grammarly"
  :group 'eglot
  :link '(url-link "https://github.com/emacs-grammarly/eglot-grammarly"))

(defcustom eglot-grammarly-modes '(text-mode latex-mode org-mode markdown-mode)
  "List of major mode that work with Grammarly."
  :type 'list
  :group 'eglot-grammarly)

(defun eglot-grammarly--server-command ()
  "Generate startup command for Grammarly language server."
  (list "unofficial-grammarly-language-server-2" "--stdio"))

(add-to-list 'eglot-server-programs
             `(,eglot-grammarly-modes . ,(eglot-grammarly--server-command)))

(provide 'eglot-grammarly)
;;; eglot-grammarly.el ends here
