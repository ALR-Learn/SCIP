;; Uncomment if you want to run scheme examples/answers
;; and comment racket answers 
#lang simply-scheme
;; Comment both lines if you want to run scheme answers.
;#lang racket
;(require test-engine/racket-tests)

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
;(check-expect (square 10) 100)
;
;(define (square x)
;  (* x x))

;; List<Number> -> List<Number>
;; Purpose is to produce a list of numbers that are the squares of the arguments
;(check-expect (squares '(1 2 3 4)) '(1 4 9 16))
;
;(define (squares x)
;  (if (empty? x)
;      (list)
;      (cons (square (first x)) (squares (rest x)))))


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


;; Question 4
;; Write a predicate ordered? that takes a sentece of numbers as its argument
;; and returns a true value if the numbes are ascending order or false value otherwise

;(define (ordered? numbers)
;  (if (< (count numbers) 2)
;      'false
;      (if (and (< (first numbers) (item 2 numbers)) (ordered? (bf numbers)))
;          'true
;          'false)))

;(ordered? '(2 1))
;(ordered? '(1 2))
;(ordered? '(1 2 3 4))
;(ordered? '(4 3 2 1))

;; Question 5
;; Write a procedure ends-e that takes a sentence as its argument and returns a sentence
;; containing only those words of the argument whose last letter is E

;(define (ends-e str)
;  (if (empty? str)
;      (se)
;      (if (equal? (last (first str)) 'e)
;          (se (first str) (ends-e (bf str)))
;          (se (ends-e(bf str))))))
;
;(ends-e '(please put the salami above the blue elephant))
;; Expected
;; '(please the above the blue)


;(test)

