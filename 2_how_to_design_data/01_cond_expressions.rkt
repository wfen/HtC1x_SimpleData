;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 01_cond_expressions) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; 01_cond_expressions.rkt

; cond expressions simplify writing conditional expressions with more than 2 cases
; To form cond expression
; (cond [<expression> <expression>]     "question" and "answer"
;       ...)                            one or more question answer pairs
; Each question must evaluate to a boolean.
; Last question can be "else".

(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 20 "solid" "red"))
(define I3 (rectangle 20 10 "solid" "red"))

; Notice how the recipe makes reading this code easier. Each part of the design
; tells us something important about the function and helps us understand it.

;; Image -> String
;; produce shape of image, one of "tall", "square" or "wide"
(check-expect (aspect-ratio I1) "tall")
(check-expect (aspect-ratio I2) "square")
(check-expect (aspect-ratio I3) "wide")

;(define (aspect-ratio img) "")  ;stub

;(define (aspect-ratio img)      ;template
;  (... img))

#;
(define (aspect-ratio img)  
  (if (> (image-height img) (image-width img))
      "tall"
      (if (= (image-height img) (image-width img))
          "square"
          "wide")))

; This function has three cases which feel like corresponding cases...
; but using if, two cases are "inside the false answer" of the first.
; cond is a multi-armed conditions. It can have any number of cases all
; at the same level.
; () balance each other   [] balance each other
; Both are equivalent, but by convention we use [] around question/answer pairs
; in cond. This makes the cond easier to read.

(define (aspect-ratio img)  
  (cond [(> (image-height img) (image-width img)) "tall"]
        [(= (image-height img) (image-width img)) "square"]
        [else "wide"]))

; if result of evaluating the first question is true, produce the result of
; evaluating the associated answer expression, producing "tall"
; if result of evaluating second question (image-height is equal to image-width),
; evaluate the answer expression that follows, producing "square"
; otherwise, if none of the previous questions were true, execute the else