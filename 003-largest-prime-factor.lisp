;; The prime factors of 13195 are 5, 7, 13 and 29.
;; What is the largest prime factor of the number 600851475143 ?

(defun prime-p (x)
  (loop for i from 2 to (/ x 2)
     if (zerop (mod x i))
     return nil
     finally (return t)))

(defun find-lowest-factorial (x) 
  (loop for i from 2 to (floor (/ x 2)) 
     if (zerop (mod x i)) do
       (progn 
	 (format t "found ~a so ~a remains ~%" i (/ x i)) 
	 (find-lowest-factorial (/ x i))
	 (return))))