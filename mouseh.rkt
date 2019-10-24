;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname mouseh) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require picturing-programs)
(define (mouthtaller img x y event)
  (ellipse 20 (abs ( - x y)) "solid" "red"))
(define (onface img)
  (overlay img (circle 40 "solid" "yellow") (square 500 "solid" "transparent")))
(big-bang (square 500 "solid" "transparent")
  (on-draw onface)
  (on-mouse mouthtaller))
(define (bigears img x y event)
  (beside (scale (abs x) (ellipse 20 20 "solid" "red"))
          (square 50 "solid" "transparent")
          (scale (abs x)(ellipse 20 20 "solid" "red"))))
(big-bang (square 500 "solid" "transparent")
  (on-draw onface)
  (on-mouse bigears))
(define (orbit img x y e)
  (
  