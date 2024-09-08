; Chez Scheme appears not to support `export` or `module` syntax
(define make-location 
    (lambda (x y) (cons x y)))
(define location-x
    (lambda (c) (car c)))
(define location-y
    (lambda (c) (cdr c)))
(define format-x
    (lambda (c) (string-append "X: " (number->string (car c))))
)
(define format-y
    (lambda (c) (string-append "Y: " (number->string (cdr c))))
)
(define show-location
    (lambda (c) 
        (display (string-append (format-x c) " " (format-y c)))
    )
)


(define loc1 (make-location 2 -3))
(show-location loc1)