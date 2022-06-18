;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 11_booleans_and_if_expressions) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 10 "solid" "blue"))

(> (image-height I1) (image-height I2))  ; is I1 taller than I2?  true
(< (image-width I1) (image-width I2))    ; is I1 skinnier than I2? true

; To form and expression:
; (and <expr1> <expr2> ...)
; all <exprn> must produce Boolean

(and (> (image-height I1) (image-height I2))
     (< (image-width I1) (image-width I2)))  ; is I1 taller & skinnier than I2?

; To evaluate an and expression:
; evaluate <exprn> one at a time:
; To evaluate an if expression:
; - if an <exprn> produces false immediately produce false (short-circuiting)
; - if all <exprn> produce true then produce true
;
; and has short-circuiting. It doesn't keep evaluating if it comes to an
; expression that produces false. It only keeps going as long as the
; expressions are producing true.

; (or <question> ...)
; Each <question> must be an expression that evaluates to a boolean.
(define x 6)
(or (< x 0) (> x 10)) ; false

; (not <question>)   ; negates a boolean value
; <question> must be expression that evaluates to a Boolean
(not (or (< x 0) (> x 10))) ; true

; ctrl-click / right-click on an primitive... "Search in help desk for '<primitive>'"