#lang racket

(require rackunit rackunit/gui rackunit/text-ui "io.rkt" "file.rkt")

(define all-tests
  (test-suite
   "all tests"
   io-tests
   file-tests))

(module+ main (test/gui all-tests))
(module+ test (run-tests all-tests))
