#|
  This file is a part of teamis project.
|#

(in-package :cl-user)
(defpackage teamis-asd
  (:use :cl :asdf))
(in-package :teamis-asd)

(defsystem teamis
  :version "0.1-SNAPSHOT"
  :depends-on (:caveman
               :cl-annot)
  :components ((:module "lib"
                :components
                ((:file "teamis")
                 (:module "view"
                  :depends-on ("teamis")
                  :components
                  ((:file "emb")))))
               (:module "src"
                :depends-on ("lib")
                :components
                ((:file "controller")))))
