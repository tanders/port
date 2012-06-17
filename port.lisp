;;; -*- Mode:Lisp; Syntax:ANSI-Common-Lisp; -*-
(in-package :om)

;; loading files
(mapc #'(lambda (file) 
	  (compile&load (make-pathname :directory (pathname-directory *load-pathname*)
				       :name file)))
      ;; source files (in required order of loading)
      '("ext" 
	"gray"
	"path"
	"proc"
	"shell"
	"sys"
	"net"))
      
;; no GUI integration into OpenMusic

