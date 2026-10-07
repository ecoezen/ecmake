;;; ecmake-tests.el --- Tests -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2026 Emin Can Özen
;;
;; Author: Emin Can Özen <emincan.oezen@gmail.com>
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:
(require 'ert)
(require 'ecmake)

(ert-deftest ecmake/test ()
  (should (eq t t)))

(provide 'ecmake-tests)
;;; ecmake-tests.el ends here
