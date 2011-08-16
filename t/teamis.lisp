#|
  This file is a part of teamis project.
|#

(in-package :cl-user)
(defpackage teamis-test
  (:use :cl
        :teamis
        :cl-test-more))
(in-package :teamis-test)

(plan nil)

;; make sure the app stopped
(teamis:stop)
(teamis:start)

;; blah blah blah.

(teamis:stop)

(finalize)
