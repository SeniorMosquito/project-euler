; initial attempts largely lost...

;(defun sum-multiples-up-to (base limit)                                                                                                                                                     
;           (loop for i from 0 summing (* base i) into subsum while (< (* base (+ i 1) limit)) finally (return subsum)))
;                                                                                                                                                                                  
; (+ (sum-multiples-up-to 3 10) (sum-multiples-up-to 5 10))


; solution + some community ideas:

(loop for i from 1 below 1000 when (or (zerop (mod i 3)) (zerop (mod i 5))) sum i)