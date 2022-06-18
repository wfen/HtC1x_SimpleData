;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 06_function_definitions) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

; Remember functions from grade school math?
; Given: f(x) = 2*x ... f(2) = 2*2 = 4 ... f(6) = 2*6 = 12
; parameter "x" stands for the varying value
; function can be used repeatedly, with any value each time

;(above (circle 40 "solid" "red") (circle 40 "solid" "yellow") (circle 40 "solid" "green"))

; parameter c stands for the changing value
(define (bulb c)
  (circle 40 "solid" c))

(above (bulb "red")
       (bulb "yellow")
       (bulb "green"))  