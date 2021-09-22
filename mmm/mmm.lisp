(setq minNum '0 meanNum '0 maxNum '0)

(defun m-length(nList)
	(if (null nList) 0
		(+ 1 (m-length( cdr nList)))))

(defun helper (xs)
  (cond ( (equal 1 (m-length xs)) (setq minNum (car xs)) (setq meanNum 0) (setq maxNum (car xs)))
		(t (helper (cdr xs))))
  ( cond ( (> minNum (car xs))(setq minNum (car xs))))
	
  ( cond ( (< maxNum (car xs))(setq maxNum (car xs))))
	
  (setq meanNum (+ meanNum (car xs)))		
)




(defun min-mean-max (xs)
	(helper xs)
	(setq meanNum (/ meanNum (m-length xs)))
	(list minNum meanNum maxNum)
)
