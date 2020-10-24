#lang racket

(define (round_prec value prec)
    (let ([mult (expt 10 prec)])
        (/ (round (* value mult)) mult)
    )
)

(display "Вычисление площади кольца.\n")
(display "Введите исходные данные:\n")
(display "Радиус кольца (см) => ")
(define radius-ring (read (current-input-port)))
(display "Радиус отверстия (см) => ")
(define radius-hole (read (current-input-port)))
(if (radius-hole . >= . radius-ring)
    (display "Ошибка! Радиус отверстия не может быть больше радиуса кольца.\n")
    (let ([result (pi . * . ((expt radius-ring 2) . - . (expt radius-hole 2)))])
        (printf "Объем отверстия ~a кв.см.\n" (round_prec result 5))
    )
)