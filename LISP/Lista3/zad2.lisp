(defmacro kwadratuj (&rest L)
    (cons 'progn 
        (mapcar
            (lambda (x) `(setf ,x (* ,x ,x)))
            L 
        )
    )
)

(print(macroexpand-1 '(kwadratuj x y z)))

(setq x 1 y 2 z 3 m 4 u 5)
(kwadratuj x y z m u)
(print (list x y z m u))