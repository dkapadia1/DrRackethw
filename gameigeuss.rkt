;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname gameigeuss) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require picturing-programs)
(define x 0)
(define y 0)
(define (tsqaure num)
  (square num "solid" "transparent"))
(define (score img)
  (overlay/align "left" "top" (tsqaure 500) (text (number->string y) 18  "black")))
(define (game num)
  (add1 y))
(define (add11 num)
  (add1 y))
(big-bang y
  (on-draw score)
  (on-tick add11))