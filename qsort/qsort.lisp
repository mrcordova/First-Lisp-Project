(declaim (optimize (speed 0) (space 0) (debug 3)))

(setq leftList '() rightList '() ordList '())

(defun pivotHelper (xs n)
	(cond 
		  (( null xs ) xs)
		  (t  (pivotHelper (cdr xs) n) 
				(cond 
					((> n (car xs ))(setq leftList (cons (car xs) leftList))) 
					((<= n (car xs)) (setq rightList (cons (car xs)  rightList)) )))))

(defun pivot (n xs)
	   (pivotHelper xs n )

	
  ;; TODO: Incomplete function.
  ;; The next line should not be in your solution.
	
	(setq newList (cons leftList (list rightList)))
	(setq leftList '() rightList '())
	(eval 'newList )
)

(defun quickHelper (xs n)
	(setq n (car xs))
	(cond 
		  (( null n ) n)
		  (t  (quickHelper (cdr xs) n)
			  (pivotHelper  ordList n)
			  (setq ordList (append leftList  rightList ))
			  (setq leftList '() rightList '()))))

(defun quicksort (xs)
  
	(setq ordList xs)
	(setq pivot (car xs))
	(quickHelper xs pivot)
	(eval 'ordList )
  
)
