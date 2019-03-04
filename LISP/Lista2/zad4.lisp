(defgeneric pole(a))
(defgeneric odl(a b))
(defgeneric print_data(a))

(defclass punkt ()
    (
        (x :accessor x)
        (y :accessor y)
    )
)

(defmethod pole ((a punkt))
    nil
)

(defmethod odl ((a punkt)(b punkt))
    (sqrt (+ (expt (- (x b) (x a)) 2) (expt (- (y b) (y a)) 2)))
)

(defmethod print_data((a punkt))
    (print (format nil "Punkt: x = ~$, y = ~$" (x a)(y a)))
)

(defclass kolo (punkt)
    (
        (r :accessor r)
    )
)

(defmethod pole ((a kolo))
    (* 3.14 (r a) (r a))
)

(defmethod odl ((a punkt)(b kolo))
    (abs (- (sqrt (+ (expt (- (x b) (x a)) 2) (expt (- (y b) (y a)) 2)))(r b)))
)

(defmethod odl ((a kolo)(b kolo))
    (abs (- (sqrt (+ (expt (- (x b) (x a)) 2) (expt (- (y b) (y a)) 2)))(+ (r a)(r b))))
)

(defmethod print_data((a kolo))
    (print (format nil "Kolo: x = ~$, y = ~$, r = ~$" (x a)(y a)(r a)))
)


(defclass prostokat (punkt)
    (
        (a :accessor a)
        (b :accessor b)
    )
)

(defmethod pole ((a prostokat))
    (* (a a) (b a))
)

;na podstawie https://math.stackexchange.com/questions/2724537/finding-the-clear-spacing-distance-between-two-rectangles
(defmethod odl ((a prostokat)(b prostokat))
    (max (- (abs (- (x a) (x b)))(/ (+ (a a)(a b)) 2) )
         (- (abs (- (y a) (y b)))(/ (+ (b a)(b b)) 2) )
    )
)

(defmethod print_data((a prostokat))
    (print (format nil "Prostokat: x = ~$, y = ~$, a = ~$, b = ~$" (x a)(y a)(a a)(b a)))
)


(setf punkt (make-instance 'punkt))
(setf (x punkt) 10)
(setf (y punkt) 5)
(print_data punkt)
(print (pole punkt))

(setf punkt2 (make-instance 'punkt))
(setf (x punkt2) 15)
(setf (y punkt2) 51)
(print_data punkt2)
(print (pole punkt2))

(print (format nil "Odleglosc miedzy punktami: ~$" (odl punkt punkt2)))

(setf kolo (make-instance 'kolo))
(setf (x kolo) 12)
(setf (y kolo) 6)
(setf (r kolo) 5)
(print_data kolo)
(print (pole kolo))

(print (format nil "Odleglosc miedzy punktem a kolem: ~$" (odl punkt kolo)))

(setf kolo2 (make-instance 'kolo))
(setf (x kolo2) 15)
(setf (y kolo2) 22)
(setf (r kolo2) 3)
(print_data kolo2)
(print (pole kolo2))

(print (format nil "Odleglosc miedzy kolami: ~$" (odl kolo kolo2)))

(setf prostokat (make-instance 'prostokat))
(setf (x prostokat) 1)
(setf (y prostokat) 1)
(setf (a prostokat) 5)
(setf (b prostokat) 7)
(print_data prostokat)
(print (pole prostokat))

(print (format nil "Odleglosc miedzy prostokatem a kolem: ~$" (odl prostokat kolo)))

(setf prostokat2 (make-instance 'prostokat))
(setf (x prostokat2) 10)
(setf (y prostokat2) 10)
(setf (a prostokat2) 3)
(setf (b prostokat2) 10)
(print_data prostokat2)
(print (pole prostokat2))

(print (format nil "Odleglosc miedzy prostokatami: ~$" (odl prostokat prostokat2)))
(print (format nil "Odleglosc miedzy prostokatem a punktem: ~$" (odl prostokat punkt)))
(print (format nil "Odleglosc miedzy prostokatem a prostokatem: ~$" (odl prostokat prostokat2)))