;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 13_discovering_primitives) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

; Two general techniques you can use for discovering primitives.
; (1) Make a lucky guess.
; (2) Search (look up) and scroll.

; It turns out that what happens after you have  been programming in a language for a
; while, is that you start to get a good sense of the naming conventions are. You manage
; to guess the name of a new primitive more often than you might think. You guess that a
; "triangle" primitive is present and start entering it.
(triangle 40 "solid" "purple")

(overlay (circle 10 "solid" "red")
         (circle 20 "solid" "yellow")
         (circle 30 "solid" "green"))

; It does seem to work. At this point, I might wonder what exactly is that number 40?
; Move mouse over operator name... ctrl-click (or right-click) on it... choose "Search
; in Help Desk for 'triangle'". This brings up the Racket documentation for triangle.
; We want the entry from "2htdp/image". It says that the first value is the side-length.

; --------------------------------------------------------------------------------------

; Imagine you want the rounded result after division. Put the cursor over name of a
; related function. Ctrl-click / right-click and select "Search in Help Desk for '/'".
; Click on the entry for "/ provided from lang/htdp-beginner". Scroll (skim) through the
; list and eventually you come to a function "round" that does what we want to do.
(/ 3 4)          ; 0.75
(round (/ 3 4))  ; 1

; The trick here is to look up the documentation for a related function and then scroll
; around looking for the thing you want... without getting lost in all the very, very
; many functions that Racket provides.