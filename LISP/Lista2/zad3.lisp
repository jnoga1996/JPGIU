(defmacro iloczyn (&rest L)
    (if (member 0 L)
        0
        (cons '* L)
    )
)

(defmacro iloczyn2 (&rest L)
    (if (member 0 L)
        0
        `(* ,@L)
    )
)

(print "Pierwszy sposob")
(print (iloczyn 1 2 3 0 4 5 0))
(print (iloczyn 1 2 3 4))

(print "Drugi sposob")
(print (iloczyn2 1 2 3 0 4 5 0))
(print (iloczyn2 1 2 3 4))