(cons 4 `())

(define sum-list
    (lambda (l) 
        (if (null? l)
            0
            (+ (car l) (sum-list (cdr l)))
    )))

(sum-list (list 1 2 3 4 5))