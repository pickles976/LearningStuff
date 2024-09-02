; Helper from last section
(define letter->number 
    (lambda (c)
        (if (char? c)
            (- (char->integer (char-upcase c)) (char->integer #\A))
            -1
        )
    )
)

(define number->letter 
    (lambda (n)
        (if (number? n)
            (integer->char (+ n (char->integer #\A)))
            -1
        )
    )
)

(define string-map
    (lambda (proc str)
        (string-map-helper proc str 0 (string-length str))
    )
)

(define string-map-helper   
    (lambda (proc str pos len)
        (if (< pos len)
            (string-append
                (proc (string-ref str pos))
                (string-map-helper proc str (add1 pos) len)
            )
            ""
        )
    )
)

; We return a function that rotates the letter by the offset provided.
(define rotate-char
    (lambda (off)
        (lambda (ch)
            (number->letter
                (remainder
                    (+ (letter->number ch) off)
                    26
                )
            )
        )
    )
)

(define encrypt-char
    (lambda (ch offset)
        (if (char-alphabetic? ch)
            (string ((rotate-char offset) ch))
            ""
        )
    )
)

(define rot13
    (lambda (ch) 
        (encrypt-char ch 13)
    )
)

(define caesar
    (lambda (ch) 
        (encrypt-char ch 3)
    )
)

(newline)
(string-map rot13 "SAMPLE TEXT")
(string-map caesar "SAMPLE TEXT")