(defun my-func (first second)
  (message "the arguments are : %s"
           (concat first second)))

(my-func "first" "cond")

(random 22)
(if t
  (message "true")
  (message "false"))

(defun fibonacci(n)
  (cond ((= n 1) 1)
        ((= n 0) 0)
        (t (+ (fibonacci(- n 1)) (fibonacci(- n 2))))))
(message "%d" (fibonacci 10))

(defun factorial(n)
  (cond ((= n 1) 1)
        (t (* n (factorial (- n 1))))))

(factorial 3)

(defun factorial-by-loop(n)
  (let ((res 1))
    (while (> n 1)
      (setq res (* res n))
      (setq n (- n 1)))
    res))

(factorial-by-loop 4)

(defun recur(n)
  (cond ((= n 1) 1)
        ((= n 0) 0)
        (t (+ n (recur(- n 1))))))
(recur 4)

(defun alert(content)
  (progn (switch-to-buffer-other-window "*message*")
         (erase-buffer)
         (insert content)
         (other-window 1)))

(defun conbine-message(answer message)
  (concat (concat "your answer is: " (number-to-string answer))
          (concat " " message)))

(defun guess-number()
  (let ((ans (random 100)) (time 0))
    (while (< time 3)
      (setq input (read-number "make your decision: " 101))
      (if (> input ans)
          (let ((msg (conbine-message input ", that\'s too big")))
            (alert msg)) nil)
      (if (= input ans)
          (let ((msg (conbine-message input ", bingo, that\'s right")))
            (alert msg)
            (return-from guess-number)) nil)
      (if (< input ans)
          (let ((msg (conbine-message input ", that\'s too small")))
            (alert msg)) nil)
      (setq time (+ time 1)))
    (let ((msg (concat  "sorry, the answer is " (number-to-string ans))))
      (alert msg))))

(guess-number)
