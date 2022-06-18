;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 08_booleans_and_if_expressions) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

; there are two boolean values ... true / false

(define WIDTH 100)
(define HEIGHT 100)

; predicates are primitives or functions that
; produce a boolean value (true/false)
;(> WIDTH HEIGHT)   ; false
;(>= WIDTH HEIGHT)  ; true

;(= 1 2)  ; false
;(= 1 1)  ; true
;(> 3 9)  ; false

;(string=? "foo" "bar")  ; false

(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 10 "solid" "blue"))
(beside I1 I2)

(< (image-width I1)
   (image-width I2))  ; true