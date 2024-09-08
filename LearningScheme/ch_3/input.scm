
; NOTE: when running a .scm script in scheme, (read) doesn't work as expected
; because stdin is coming from the redirect operator: `scheme < user_input.scm`
; Instead start the scheme REPL and load the file with (load "user_input.scm")
(define do-thing 
    (lambda () (char? (read)))
)