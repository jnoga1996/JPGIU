(defun df(f)
    (cond
        ((numberp f) 0)
        ((symbolp f) (if (eq f 'x) 1 0))
        ((listp f)
            (let ((op (first f)) (args (rest f)) (x1 (second f)))
                (case op
                    ('+ (cons '+ (mapcar 'df args)))
                    ('- (cons '- (mapcar 'df args)))
                    ('sin `(* (cos ,@args) ,(df (first args))))
                    ('cos `(* ((- sin) ,@args) ,(df (first args))))
                ) 
            )
        )
        (t "Nie wiem")
    )
)

(print (df '(+ x 1 2 3)))
(print (df '(sin x 2 )))
(print (df '(cos x 2 )))
(print (df '(* x (* x x) )))