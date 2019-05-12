(defmacro ++1 (&rest L)
    (cons 'progn 
        (mapcar
            (lambda (x) `(incf ,x))
            L 
        )
    )
)

(print (macroexpand-1 '(++1 x y z)))
(print (macroexpand-1 '(++1 1)))

(setq x 1 y 2 z 3 m 50 u 100)
(++1 x y z m u)
(print (list x y z m u))