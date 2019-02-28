(defun usun-liczby(L)
    (remove-if (lambda (x) (numberp x)) 
        L
    )
)

(defun usun-dodatnie(L)
    (remove-if (lambda (x) (and (numberp x) (> x 0)))
        L
    )
)

(print(usun-liczby '(4 x -4 y 2 z -2 t 3 -3)))

(print(usun-dodatnie '(4 x -4 y 2 z -2 t 3 -3)))