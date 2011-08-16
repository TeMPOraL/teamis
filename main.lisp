;;; Ensure we have Quicklisp running
(load (merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname)))

(ql:quickload 'clack)

(defpackage :teamis
  (:use :common-lisp
        :clack
        :clack.app.route))

(in-package :teamis)

(defun t-index (env)
  '(200 (:content-type "text/plain") ("INDEX")))

(defun t-random (env)
  '(200 (:content-type "text/plain") ("RANDOM")))

(defun t-picture (env)
  `(200 (:content-type "text/plain") (,(prin1-to-string env))))

(defun t-newest (env)
  '(200 (:content-type "text/plain") ("NEWEST")))

(defun t-top (env)
  '(200 (:content-type "text/plain") ("TOP")))

;;; primary app dispatcher
(defroutes app-main (env)
           (GET "/" #'t-index)
           (GET "/random" #'t-random)
           (GET "/:id" #'t-picture)     ;  FIXME any way to extract this :id, so that I won't have to regexp for it in handler?
           (GET "/newest" #'t-newest)
           (GET "/top" #'t-top))