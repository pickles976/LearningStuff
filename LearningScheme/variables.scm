; (let ((a 3) (b 2)) (+ a b))
; is translated into
; ((lambda (a b) (+ a b)) 3 2)
; CLOSURES ARE STATE

(let ((pi 3.14159))
    (begin
        (display pi)
        (newline)
    )
)

(let ((pi 3.14159)
      (square (lambda (num) (* num num))))
    (begin
        (display (square pi))
        (newline)
    )       
))

(define habitat-material
    (lambda (height radius thickness)
        (let 
            ((pi 3.14159)
             (cylinder 
                (lambda (r h) 
                    (* h (* pi (* r r))))))
            (-
                (cylinder radius height)
                (cylinder (- radius thickness)
                        (- height (* 2 thickness)))
            )
        )
    )
)

(habitat-material 10 5 1)