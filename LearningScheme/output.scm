; display and newline

(define process-input 
    (lambda () 
        (
        if (number? (read))
            (display "Yep, that's a number")
            (display "NOT A NUMBER!")
        )
    )
)

(display "Enter a number")
(newline)
(process-input)

; run with `scheme (load "output.scm")`