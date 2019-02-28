(defun rozw(a b c)
    (if (= a 0)
        (progn
            ;(print "a == 0")
            (if (= b 0)
                (progn
                    ;(print "b == 0")
                    (if (= c 0)
                        (progn
                            ;(print "c == 0")
                            (list t)
                        )
                        (progn
                            ;(print "c != 0")
                            nil
                        )
                    )
                )
                (progn
                    ;(print "b != 0")
                    (list (/ (- c) b))
                )
                
            )
        )  ; a = 0
        (progn
            ;(print "a != 0")  ; a != 0
            (let (delta) 
                (setf delta (- (* b b) (* 4 a c)))
                ;(print delta)
                (if (> delta 0)
                    (progn
                        ;(print "delta > 0")
                        (list
                            (/(- (- b) (sqrt delta)) (* 2 a))
                            (/(+ (- b) (sqrt delta)) (* 2 a))
                        )
                    )
                    (progn
                        ;(print "delta <= 0")
                        (if (= delta 0)
                            (progn
                                ;(print "delta = 0")
                                (list (/ (- b) (* 2 a)))
                            )
                            nil
                        )
                    )
                )
            )
        )
        
    )
)

(print(rozw 1 0 1))
(print(rozw 1 2 1))
(print(rozw 1 2 0))
(print(rozw 0 0 0))