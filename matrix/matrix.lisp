(declaim (optimize (speed 0) (space 0) (debug 3)))

;(setf addList '())

(defun matrix-add (m1 m2)
   ;; TODO: Incomplete function.
   ;; The next line should not be in your solution.
	(cond ((null m2) nil)
		  (t (setq addList (matrix-add (cdr m1) (cdr m2))) (cons (mapcar #'+  (car m1) (car m2)) addList))))
			 
(defun matMultHelper (a b)
	(cond (( null (car b)) nil)
		  (t (setq finlist (matMultHelper a (mapcar #'cdr b))) (setq colList (mapcar #'car b)) (cons (reduce #'+ (mapcar #'* (car a) colList)) finlist))))

(defun matrix-multiply (a b)
    ;; TODO: Incomplete function.
    ;; The next line should not be in your solution.
	(cond ((null a) nil)
		  (t (setq nList (matrix-multiply (cdr a) b))(cons (matMultHelper a b) nList) )))


(defun matrix-transpose (m)
    ;; TODO: Incomplete function
    ;; The next line should not be in your solution.
    (cond ((null (car m)) nil)
		  (t (setq nList (matrix-transpose (mapcar #'cdr m))) (cons (mapcar #'car m) nList)  )))


