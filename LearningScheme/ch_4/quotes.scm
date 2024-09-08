; Quote tells scheme not to try to evaluate something, just to create the structure
(quote (1 . 2))

`(1 . 2)

; Symbols are non-numeric data. Think of it like an enum
(cons (cons 3 "foo") (cons 5 "bar"))
(cons (cons 3 `foo) (cons 5 `bar))
