;; Uncomment if you want to run scheme examples/answers
;#lang simply-scheme
#lang racket
(require test-engine/racket-tests)

;; Question 2
;; Write a procedure squares that takes a sentence of number as its argument
;; and returns a sentence of squares of the numbers:
;; > (squares '(2 3 4 5))
;; (4 9 16 25)

;; Scheme Answer
;(define (square x)
;  (* x x))

;(define (squares x)
;  (if (empty? x)
;      (se)
;      (se (square (first x)) (squares (bf x)))))

;(squares '(1 2 3))

;; Racket Answer
;; Number -> Number
;; Purpose is to produce a number multipied by itself
(check-expect (square 10) 10)

(define (square x)
  (* x x))

(test)

;; Question 3
;; Write a procedure switch that takes a sentence as its argument and returns a
;; sentence in which every instance of the words I or me is replaced by you while
;; every instance of you is replaced by me except at the beginning of the sentence,
;; where it's replaced by I.

;; Scheme Answer
;(define (switch str)
;  (define (replace str)
;    (if (empty? str)
;        (se)
;        (if (or (equal? (first str) 'I) (equal? (first str) 'me))
;            (se 'you (replace (bf str)))
;            (if (equal? (first str) 'you)
;                (se 'me (replace (bf str)))
;                (se (first str) (replace (bf str)))))))
  
;  (if (empty? str)
;      (se)
;      (if (equal? (first str) 'you)
;          (se 'I (replace(bf str)))
;          (se (first str) (replace (bf str))))))

;(switch '(I told))
;(switch '(you told me that I should wake you up))