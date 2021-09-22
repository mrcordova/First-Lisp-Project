(declaim (optimize (speed 0) (space 0) (debug 3)))




(defun reachable (transition start final input)
   (cond ((and (null input)(equal start final )) t)
		 ((null input) nil)
		  (t (setq lis (funcall transition  start (car input)))
			  (setq b (reachable transition (car lis) final (cdr input)))
			     (cond ((null b)(setq lis (funcall transition  start (car input))) (setq b (reachable transition (car (cdr lis)) final (cdr input)))b)
						(t b)))) )
