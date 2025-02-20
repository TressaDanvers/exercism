(eval-when (:compile-toplevel :load-toplevel :execute)
  (load "hello-world")
  (quicklisp-client:quickload :fiveam))

(defpackage :hello-world-test
  (:use :cl :fiveam)
  (:export :run-tests))

(in-package :hello-world-test)

(def-suite* hello-world-suite)

(test say-hi! (is (equal "Hello, World!" (hello-world:hello))))

(defun run-tests (&optional (test-or-suite 'hello-world-suite))
  "Provides human readable results of test run. Default to entire suite."
  (run! test-or-suite))
