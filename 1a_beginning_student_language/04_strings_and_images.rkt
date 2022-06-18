;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 04_strings_and_images) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; tells DrRacket we want to use the image functions from the
; 2nd edition of the How to Design Programs book
(require 2htdp/image)

;(circle 10 "solid" "red")
;(rectangle 30 60 "outline" "blue")
; produce an image of the string "hello" (not a string)
;(text "hello" 24 "orange")

; above produces an image with all its arguments stacked up,
; and lined up on their horizontal centers
(above (circle 10 "solid" "red")
       (circle 20 "solid" "yellow")
       (circle 30 "solid" "green"))

; beside produces an image with all its arguments side by side,
; and lined up on their vertical centers
(beside (circle 10 "solid" "red")
        (circle 20 "solid" "yellow")
        (circle 30 "solid" "green"))

; overlay produces an image with all its arguments one on top,
; of the other, and lined up on their centers
(overlay (circle 10 "solid" "red")
         (circle 20 "solid" "yellow")
         (circle 30 "solid" "green"))