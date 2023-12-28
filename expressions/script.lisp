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

(defun f (a) 
	(sum-of-squares (+ a 1) (* a 2)))

; ex 2
(print (f 5))

; 1.1.5 The Substitution Model for Procedure Application

; To apply a compound procedure to arguments, 
; evaluate the body of procedure,
; with each formal parameter replaced by
; the corresponding argument

; Ilustrating the process above on:

; (f 5)

; Begin by retrieving the body of f:
; (sum-of-squares (+ a 1) (* a 2))

; Replacing the formal parameters with the argument of 5
; (sum-of-squares (+ 5 1) (* 5 2))

; Reducing the function to 
; (+ (square 6) (square 10))

; If we are using the definition of square we can trim it to:
; (+ (* 6 6) (* 10 10)  

; which is reduced by multiplication
; (+ 36 100)

; finally results in:
; 136

; More info on this topic here Structure and Interpretation of Computer Programs, 2nd ed. | page 47 

; Applicative order versus normal order

; In the examples above we followed the applicative order execution, where the interpreter first
; evaluates the operator and operand and then applies the resulting procedure to the resulting arguments

; Another way of doing this was to not evaluate the operands until their values are needed
; Instead it would first substitute operand expressions for parameters until it obtained an
; expression involving only primitive operators, and would then perform the evaluation

; In the example of (f 5)

; (sum-of-squares (+ 5 1) (* 5 2))
; (+ (square (+ 5 1)) (square (* 5 2)) )
; (+ (* (+ 5 1) (+ 5 1)) (* (* 5 2) (* 5 2)))

; followed by the reductions
; (+ (* 6 6) (* 10 10))
; (+ 36 1











