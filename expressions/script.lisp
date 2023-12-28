; Print sum of the numbers
; The same goes for subtraction, devision etc..
(print(+ 10 10))

; Defining variables
(defvar size 2)

(print size)

; 1.1.3 Evaluating Combinations 
;  - Evaluate the subexpression of combination
;  - Apply the subprocedure that is the value of the leftmost subexpression
;  to the arguments that are the values of the other subexpression


; Square function
(defun square (x) (* x x))

; Explanation
; (defun  square       (x)       (*       x,      x))
;    |       |          |         |       |       |
;   To     square   something  multiply  it  by itself

; ex 1
(print (square 5))

; ex 2
(print (square (square 5)))

(defun sum-of-squares (x y) 
	(+ (square x) (square y)))

; ex 1
(print (sum-of-squares 5 5))


; 1.1.5 The Substitution Model for Procedure Application






