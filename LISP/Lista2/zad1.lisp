(defun uprosc (f)
    (if (atom f)
        f
        (eval f)
    )
)

(print(uprosc (+ 2 1)))
(print(uprosc '(+ 2 1)))
(print(uprosc (+ '(+ 2 3) 1)))