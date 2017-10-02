; Find lowest valid time (HH:mm:ss) possible for 6 given values

; is-valid :: lisp -> bool
(define (is-valid-time time)
    (let* 
      ((hours (cons (car time) (car (cdr time))))
       (minutes (cons (list-ref time 2) (list-ref time 3)))
       (seconds (cons (list-ref time 4) (list-ref time 5))))

    ; Check that hours is less than 24
    (if (> (+ (* 10 (car hours)) (cdr hours)) 23) #f
        ; Check that seconds is less than 60
        (if (>= (+ (* 10 (car minutes)) (cdr minutes)) 60) #f
            ; Checks that seconds is less than 60
            (if (>= (+ (* 10 (car seconds)) (cdr seconds)) 60) #f #t)))))

; Given a list of
; '((1 2 3 4 5 6) (4 5 9 3 7 7) (0 0 0 7 8 9))
; should retunr
; '("12:34:56" "NOT POSSIBLE" "07:08:09")

