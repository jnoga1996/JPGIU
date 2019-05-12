;(setf x '(:imie "Ewa" :nazwisko "Nowak" :kierunek "Prawo" :rok 3))
;(print x)

(defmacro where(&rest L)
    (let ((parameters)(arguments)(argslist))
        (loop for el in L
            if (or (stringp el)(numberp el))
                do (push el arguments)
            else
                do (push el parameters)
        )
        (loop for parameter in parameters for argument in arguments
            do (push (list parameter argument) argslist)
        )

        `(lambda (cd)
            ,(cons 'and 
                (mapcar
                    (lambda (x) `(equal (getf cd ,(first x)) ,(second x)))
                    argslist
                )
            )
        )
    )
)

(print (macroexpand-1 '(where)) )

(print (macroexpand-1 '(where :autor "Sienkiewicz" :lang "pl")) )

(defvar *spis* '(
    (:imie "Jan" :nazwisko "Kowalski" :kierunek "Fizyka" :rok 1)
    (:imie "Ewa" :nazwisko "Nowak" :kierunek "Prawo" :rok 2)
    (:imie "Marek" :nazwisko "Markowski" :kierunek "Fizyka" :rok 2)
    (:imie "Adam" :nazwisko "Pietrzak" :kierunek "Fizyka" :rok 1)
    (:imie "Zofia" :nazwisko "Sienkiewicz" :kierunek "Chemia" :rok 1)
    (:imie "Józef" :nazwisko "Koper" :kierunek "Fizyka" :rok 1)
))

(print (macroexpand-1 '(where :rok 1)) )
(print (macroexpand-1 '(where :rok 1 :kierunek "Chemia" :imie "Adam")) )
;(print (remove-if-not (where :rok 1) *spis*))

