(defun PAD (n)
  (if (< n 3)
      1
      (+ (PAD (- n 2)) (PAD (- n 3)))))
