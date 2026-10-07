;;; ecmake-common-tests.el --- Tests for common helpers -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2026 Emin Can Özen
;;
;; Author: Emin Can Özen <emincan.oezen@gmail.com>
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Tests for common helpers
;;
;;; Code:
(require 'ert)
(require 'ecmake-common)

(ert-deftest ecmake-common/error ()
  "Verify tath `ecmake-error' signals `ecmake-error' and formats its message."
  (let ((err (should-error (ecmake-error "Process %s exited with code %d" "cmake" 1)
                           :type 'ecmake-error)))
    (should (equal (cadr err) "Process cmake exited with code 1"))))

(provide 'ecmake-common-tests)
;;; ecmake-common-tests.el ends here
