; translate (let ((w 3)) (let ((x 4)) (/ w x))) into procedure calls:
((lambda (w) ((lambda (x) (/ w x)) 4)) 3)

; let* vs let vs letrec

