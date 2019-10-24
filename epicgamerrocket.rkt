;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname epicgamerrocket) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require picturing-programs)
(define (place-on-pink img)
(overlay/align "middle" "bottom" img (square 500 "solid" "transparent")))   
(define (moveup img)
  (above  img (square 5 "solid" "transparent")))
(big-bang (triangle 20 "solid" "black")  (on-draw place-on-pink) (on-tick moveup 1))