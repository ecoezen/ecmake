;;; ecmake-common.el --- Common helpers -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2026 Emin Can Özen
;;
;; Author: Emin Can Özen <emincan.oezen@gmail.com>
;; Maintainer: Emin Can Özen <emincan.oezen@gmail.com>
;; Version: 0.0.1
;; Keywords: c convenience languages processes tools
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Common helpers
;;
;;; Code:

;;; Group and Error definitions
(defgroup ecmake nil
  "CMake integration for GNU Emacs."
  :group 'tools)

(define-error 'ecmake-error "eCMake error")

(defun ecmake-error (format-string &rest args)
  "Signal an `ecmake-error' with message formatted from FORMAT-STRING and ARGS."
  (signal 'ecmake-error (list (apply #'format format-string args))))

(provide 'ecmake-common)
;;; ecmake-common.el ends here
