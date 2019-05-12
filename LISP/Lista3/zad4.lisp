(defmacro zawiera(&body ListOfPairs)
    `(lambda (x)
        ,(cons 'or
            (mapcar 
                (lambda (z) `(and (> x ,(first z)) (< x ,(second z))))
                ListOfPairs
            )
        )
    )
)

(print (macroexpand-1 '(zawiera (1 2)(3 4))))
(print (remove-if(zawiera (2 5) (5 8) ) '(1 2 3 4 5 6 7)))
