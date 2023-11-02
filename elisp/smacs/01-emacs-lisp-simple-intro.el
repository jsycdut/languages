;; from http://smacs.github.io/elisp/


;; 打印消息
(message "Hello World")

;; 声明函数的格式
;;(defun function-name (argument-list)
;;  "document string"
;;  body)

;; 声明函数hello-world
(defun hello-world (name)
  "Say Hello to user whoes name is NAME"
  (message "Hello, %s" name))

;; 调用函数hello-world
(hello-world "jsy")


;; 定义变量name，elisp中的变量和函数都是全局的
(setq name "jsy")

;; let定义局部变量
(defun circle-area (radix)
  (let ((pi 3.1415926) ;; (pi 3.1415926)这里是定义并赋值了pi
        area) ;; 定义area
    (setq area (* pi radix radix)) ;; area 赋值，(* a b c) 意味 a * b * c
    (message "直径为 %.2f 的圆面积是 %.2f" radix area)))

(circle-area 3)

;; 连乘
(* 1 2 3 4 5)

;; lambda函数
;; (lambda (argument-list)
;;   "documentation string"
;;   body)

(funcall (lambda (name)
           (message "Hello, %s." name)) "Emacser")

;; 控制流
(defun my-max (a b)
  (if (> a b)
       a b))
(my-max 3 4)

;; 条件选择
(defun fib (n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (t (+ (fib (- n 1))
              (fib (- n 2))))))

(fib 10)

;; while 循环
(defun factorial (n)
  (let ((res 1))
    (while (> n 1)
      (setq res (* res n)
            n (- n 1)))
    res))
(factorial 10)

;; 逻辑 and or not
(defun hello-world (&optional name)
  (or name (setq name "emacser"))
  (message "Hello, %s." name))

(hello-world "jsy")
(hello-world)

(defun square-number-p (n)
  (and (>= n 0)
       (= (/ n (sqrt n)) (sqrt n))))

(square-number-p -1)
(square-number-p 25)

;; 经典的游戏，猜数字
(defun guess-number ()
  (message "game start!")
  (let ((answer 23) (time 0) ball
  (while (< time 3)
    (setq ball (read-number "your answer: "))
    (if (= answer ball)
        (message "yes, right"))
    (setq time (+ time 1))
    (message "your number: %d" ball)
    )))

(guess-number)

;; M-x 命令，输入get来调用这个函数
(defun get (x)
  (interactive "nInput your x: ")
  (message "%d" x))

((lambda (x y) (message "%s---%s" x y)) 'hello 'World)
