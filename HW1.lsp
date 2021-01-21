(defun PAD (n)
  (if (< n 3)             ; condition that if the sequence number is less than 3 it returns a 1
      1
      (+ (PAD (- n 2)) (PAD (- n 3))))) ; Else for n>3 it starts the recursive algorithm 

(defun SUMS (x)
  (cond ((or (= x 0) (= x 1) (= x 2)) 0)    ;Since for the first few cases there is no numbers being added together, the conditional is set to return 0 for there cases
        (T (+ (SUMS (- x 2)) (SUMS (- x 3)) 1))
        )
  )

(defun ANON (TREE)                                       
  (cond ((null TREE) '())         ; Case where the tree is empty, it returns an empty list                                
        ((atom TREE) '?)          ; Otherwise returns a ? for trees with a single node
        (T (cons (ANON (car TREE)) (ANON (cdr TREE))))    ;Else for multiple branches, the tree is constructed of ? with recursion.
        )
  )
