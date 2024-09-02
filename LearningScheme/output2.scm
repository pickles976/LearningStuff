(define display% 
    (
        lambda (text) 
            (begin
                (display text)
                (newline)
            )
    )
)

(display% "This should be followed by a newline")
(display% "Did it work?")

(define exercise3-11 
    (lambda (a b) 
        (begin
            (display% (+ a b))
            (display% (* a b))
            (if (> a b)
                a
                b
            )
        )
    )
)

(exercise3-11 4 5)