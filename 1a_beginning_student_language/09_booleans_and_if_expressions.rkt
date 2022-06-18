;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 09_booleans_and_if_expressions) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

; if expressions allow our programs to produce different results
; depending on the answer to true-false questions -- depending upon
; the result produced by a predicates

; To form an if expression:
; (if <expression>       question (must produce boolean)
;     <expression>       true answer
;     <expression>)      false answer
; there are two boolean values ... true / false

(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 10 "solid" "blue"))
(beside I1 I2)

(if (< (image-width I1)
       (image-height I1))
    "tall"
    "wide")             ; tall

(if (< (image-width I2)
       (image-height I2))
    "tall"
    "wide")             ; wide