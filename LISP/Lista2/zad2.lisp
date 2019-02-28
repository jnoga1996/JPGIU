(defun above(n)
    (lambda (x) (> x n))
)

(defun below(n)
    (lambda (x) (< x n))
)

(defun between(a b)
    (lambda (x) (and (> x a) (< x b)))
)

(defun between2(a b)
    (and (above a) (below b))
)

(defmacro oraz (&rest L)
    `(lambda (x) (and ,@L))
)

(print(remove-if (above 5) '(1 2 3 4 5 6 7 8)))

(print(remove-if-not (between 2 5) '(1 2 3 4 5 6 7 8)))


(defun dzielnik(n)
    (lambda (x) (= 0 (mod x n)))
)

(print(remove-if-not (dzielnik 2) '(1 2 3 4 5 6 7 8)))

(print(remove-if-not (oraz (> x 2)(< x 6)) '(1 2 3 4 5 6 7 8)))
(print (oraz (> x 2) (< x 6)))