

(string? 40)
(string? "Engineer Gaming")

(string-append "Stand on the point --" "Maggots!")
(string-length "Engineer Gaming")

; Comparison
(string=? "str1" "str2")

; Indexing
(string-ref "PICKLE" 2)

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

(define caesar-encrypt-string-helper
    (lambda (str pos len)
        (if (>= pos len)
            ""
            (string-append
                (caesar-encrypt-char (string-ref str pos)) ; encrypt current character
                (caesar-encrypt-string-helper str (add1 pos) len) ; recurse and append
            )
        )
    )
)

(define caesar-encrypt-string
    (lambda (str)
        (caesar-encrypt-string-helper str 0
            (string-length str)
        )
    )
)

(trace caesar-encrypt-string)
(caesar-encrypt-string "SUSSUS AMONGUS")