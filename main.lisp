;;; Ensure we have Quicklisp running
(load (merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname)))

(ql:quickload 'clack)

(defun t-index (env)
  '(200 (:content-type "text/plain") ("INDEX")))

(defun t-random (env)
  '(200 (:content-type "text/plain") ("RANDOM")))

(defun t-picture (env)
  '(200 (:content-type "text/plain") ("PICTURE")))

(defun t-newest (env)
  '(200 (:content-type "text/plain") ("NEWEST")))

(defun t-top (env)
  '(200 (:content-type "text/plain") ("TOP")))

;;; primary app dispatcher
(clack.app.route:defroutes t-main (env)
                           (GET "/" #'t-index)
                           (GET "/random" #'t-random)
                           (GET "/:id" #'t-picture)
                           (GET "/newest" #'t-newest)
                           (GET "/top" #'t-top))