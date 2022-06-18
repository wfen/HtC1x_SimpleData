;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 06_htdf_x_structure_of_data_orthogonality) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; 06_htdf_x_structure_of_data_orthogonality.rkt

; The HtDF and HtDD recipes are largely orthogonal. This means that HtDF works nearly
; the same way for all forms of data. This has a significant impact on how quickly we
; can expand our design abilities, beacuse once we learn a new form of data we
; already mostly know how to design functions that operate on it.

; I hope you're already beginning to see some of the power of working with a
; systematic design process. One piece of that is that you always know what to do
; next. There's always the next step of the recipe. And that step of the recipe
; tells you what kind of thing you need to write and where you should be looking to
; figure out how to write it. So when it's time to write the examples, you know that
; you can look at the signature and the purpose to help you figure out what the
; examples need to be.

; You've also seen the benefit of producing uniformly structured code. Code that's
; easy for other programmers to read and code that has an appropriate number of
; tests. But in this next part, you're going to see the power of systematic design
; really start to step up.

; The design method is structured so that the functions recipe and the data recipe
; remain orthogonal (mostly independent). We want this because as we learn more
; forms of data, the functions recipe is going to continue to work unchanged or
; mostly unchanged with those forms of data. So now we're going to begin covering
; ground a lot more quickly because of this property of the way the recipes are
; designed.
;                           form of data
;
; primitive          |       non-primitive (designed w/ HtDD)
;                    |
; String Number...   | atomic  distinct  interval  enumeration  itemization  compound
;                    |
;                    |                                TLColor    
;                    | CityName  false   SeatNum   LetterGrade  CountDown
;----------------------------------------------------------------------------
; double, yell, area   best-city?           aisle?   next-color    display
; image-area, tall                                   bump-up
;
; 
; At the end of week one, we learned about primitive data, including types like
; String, Number, and Image. We learned the how to design function recipe and
; applied it to design functions like double (Number), yell (String), and image-area
; (Image).
;
; This week we've started to learn about other forms of data. In particular, we've
; learned about non primitive data – data where there's a type that we design with
; the how to design data definitions recipe.
;
; We learned about atomic non-primitive data and we designed the type CityName. Then
; we designed the best-city? function that consumed CityName. We also previewed a
; form of data called enumerations with the TLColor type and the next-color function.

; We're going to learn about some other forms of data, including intervals,
; enumerations, itemizations, and a special form called distinct. And we'll see
; examples of those types. You'll be able to design functions that operate on them.
;
; Since the HtDF recipe is largely orthogonal to the form of data, it works the same
; way with different forms of data. This allows us to focus most of the lecture time
; on designing different kinds of data definitions while not having to spend much time
; on designing functions that consume that data. And what's great is the power of
; having a design method in which the individual recipes are orthogonal to the form of
; data is only going to grow from there.
;
; Next week, we're mostly going to focus on two things. One new form of data, compound
; data. And also a recipe that helps us design interactive programs like games and
; animations. And again, because of this orthogonality, most of the lecture time will
; be on compound data and on the how to design worlds recipe.

; Orthogonality is always great in design when you can get it. Here, you've got
; orthogonality in the design of the actual design method. And it's giving us some
; wonderful properties here. We can learn HtDF and HtDW and we can learn forms of data
; and we get the cross product for free.
;
; That's going to be a big benefit in terms of using this method. And later on in the
; course, we'll see some other examples of where we work orthogonality into our own
; designs and get some similar benefits.
