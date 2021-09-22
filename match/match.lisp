

(defun match (pattern assertion)
(cond ((and (null pattern)(null assertion)) t)
	  ((or (null pattern)(null assertion)) nil)
	  ((equal (car pattern) '!) 
			(cond ((or(equal (car (cdr pattern)) (car (cdr assertion))) (equal (car( cdr pattern )) '?)) (setq b (match (cdr pattern) (cdr assertion))) b)
				  (t (setq b (match pattern (cdr assertion))) b)))
	  (t ( setq b(match (cdr pattern ) (cdr assertion)))
			(cond((eval b)(cond((or (equal (car pattern) (car assertion)) (equal (car pattern) '?)) t)
						  (t nil)))
			(t nil)))))
