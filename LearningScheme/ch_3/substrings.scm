(substring "PICKLE" 0 4)


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

; Cipher
(define caesar-rotate-char 
    (lambda (ch)
        (number->letter
            (remainder
                (+ (letter->number ch) 3)
                26
            )
        )
    )
)

(define caesar-encrypt-char
    (lambda (ch)
        (if (char-alphabetic? ch)
            (string (caesar-rotate-char ch))
            ""
        )
    )
)

(define caesar-encrypt-string 
    (lambda (str)
        (if (string=? str "")
            ""
            (string-append
                (caesar-encrypt-char
                    (string-ref str 0))
                (caesar-encrypt-string
                    (substring str 1 (string-length str)))
            )
        )
    )
)

(caesar-encrypt-string "SUSSUS AMONGUS")