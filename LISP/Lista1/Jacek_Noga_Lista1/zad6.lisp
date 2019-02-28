(defun prime(n)
    (if (<= n 1)
        nil
        (progn
            (let (result)
            (setf result t)
            (loop for i from 2 to (- n 1)
                if (= 0 (mod n i))
                    do (setf result nil)      
            )
            result
            )
        )
    )  
)

;(print(prime 1))
;(print(prime 2))
;(print(prime 3))
;(print(prime 4))
;(print(prime 5))

(defun rozklad(n)
    (let (factors)
        (loop for i from 1 to n
            if (and (= 0 (mod n i)) (prime i))
            do
                (progn
                    (push i factors)
                    (setf n (/ n i))
                    (setf i 1) ;moze byc kilka takich samych dzielnikow
                )
        )
        (reverse factors)
    )
)

(print (rozklad 1))
(print (rozklad 6))
(print (rozklad 24))