; String comparison
(char=? #\A #\B)
(char-ci=? #\A #\a)

; Made my own case-insensitive string comparison function
(define char-ci=?% 
    (lambda (c1 c2) 
        (char=? 
            (char-downcase c1)
            (char-downcase c2)
        )
    )
)

(char-ci=?%  #\A #\a)
(char-ci=?%  #\A #\b)

; Convert to ascii code
(char->integer #\A)

(define letter->number 
    (lambda (c)
        (if (char? c)
            (- (char->integer (char-upcase c)) (char->integer #\A))
            -1
        )
    )
)

(letter->number #\A)
(letter->number #\F)
(letter->number 3)