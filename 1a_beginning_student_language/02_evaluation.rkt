;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 02_evaluation) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; primative call rule
; proceeds left-to-right and inside-to-outside
;
; "call to a primative" with "+" being the operator
; "2" "(* 3 4)" and "(- (+ 1 2) 3)" are operands
;
; To evaluate a primative call:
; - first reduce operands to values
; - then apply primative to the values
(+ 2 (* 3 4) (- (+ 1 2) 3))
; (+ 2 12      (- (+ 1 2) 3))  Step 1
; (+ 2 12      (- 3       3))  Step 2
; (+ 2 12      0)              Step 3
; 14
