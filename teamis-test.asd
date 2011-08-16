#|
  This file is a part of teamis project.
|#

(in-package :cl-user)
(defpackage teamis-test-asd
  (:use :cl :asdf))
(in-package :teamis-test-asd)

(defsystem teamis-test
  :author ""
  :license ""
  :depends-on (:teamis
               :cl-test-more)
  :components ((:module "t"
                :components
                ((:file "teamis")))))
