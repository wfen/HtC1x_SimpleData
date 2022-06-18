;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 03_strings_and_images) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;"apple"
;(string-append "Ada" " " "Lovelace")
; can't add a number to a string (+ 1 "123")
; "123"  123   (+ 1 123)

; string-length produces the length of a string
(string-length "apple") ; 5
; substring lets us take out parts of a string (0-based indexing)
; substring produces the substring from the first index
; number up to and not including the last index number
(substring "012345678" 2 4) ; "23"
(substring "Caribou" 2 4) ; "ri"
(substring "Caribou" 0 3) ; "Car"