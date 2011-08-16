(clack.util:namespace teamis.controller
  (:use :cl
        :caveman
        :teamis)
  (:import-from :teamis.view.emb
                :render))

(cl-annot:enable-annot-syntax)

@url GET "/"
(defun index (params)
  (render
   "index.tmpl"
   params))

@url POST "/"
(defun index-post (params)
  @ignore params
  "Hello, Caveman!")

@url GET "/test/:foobarbaz/"
(defun index-test (params)
  (prin1-to-string params))
