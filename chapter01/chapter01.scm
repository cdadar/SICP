;; 1.1
10

(+ 5 3 4)


(- 9 1)


(/ 6 2)

(+ (* 2 4) (- 4 6))

(define a 3)


(define b (+ a 1))

(+ a b (* a b))


(= a b)


(if (and (> b a) (< b (* a b))) b a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a))

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))

;; 1.2

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;; 1.3

(define (e13 a b c)
  (cond ((and (< a b) (< a c) (+ c b)))
         ((and (< b a) (< b c)) (+ a c))
         ((and (< c a) (< c b)) (+ a b))))


(define (Ackermann x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (Ackermann (- x 1)
                         (Ackermann x (- y 1))))))


;; 1.11
(define (e111 n)
  (cond ((< n 3) n)
        ((>= n 3) (+ (e111 (- n 1))
                    (* 2 (e111 (- n 2)))
                    (* 3 (e111 (- n 3)))))))
