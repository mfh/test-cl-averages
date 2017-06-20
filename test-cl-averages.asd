;;;; test-cl-averages.asd

(asdf:defsystem #:test-cl-averages
  :serial t
  :description "CL-AVERAGES is a library for mathematical means."
  :author "Ahmad Hasan"
  :license "MIT License"
  :components ((:file "package")
               (:file "test-cl-averages")))

