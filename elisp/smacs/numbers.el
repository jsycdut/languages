;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 数字类型
;; numbers，有整数integer和浮点数float（没有双精度这一说法）
;; 可以自定义2至36进制数据表示，格式为 "#进制数字r数字表示"
;; 如自定义5进制数字 "#5r23"，该值为2 * 5 + 3 = 13
#5r23 ;; 2 * 5 + 3 = 13
#4r11 ;; 1 * 4 + 1 = 5
#22r4a ;; 4 * 22 + 10 = 98

;; 特殊的是，对于2进制，8进制，16进制有单独的符号表示
;; #2r11 = #b11
;; #8r11 = #o11
;; #16r11 = #x11
;; 至于十进制，直接写啊，12345就行了

;; 测试一个数值的类型，用 [type]p来进行测试，type为数值类型，即整数(integer)和浮点数(float)，p意为predicate
(integerp 3) ;; t
(integerp 3.0) ;; nil
(integerp -1) ;; t

(floatp 2.3) ;; t
(floatp 2) ;; nil

;; 当然，测试是不是数字的话，用numberp
(numberp 23) ;; t
(numberp "ff") ;; nul

;; 数值类型转换
;; integer -> float
(float 3) ;; 3.0

;; float -> integer
(ceiling 3.3) ;; 4
(ceiling -3.3) ;; -3
(floor 3.3) ;; 3
(floor -3.3) ;; -4
(truncate 3.99999) ;; 3
(truncate -3.99999) ;; -3
(truncate 3.0001) ;; 3
(truncate -3.0001) ;; -3
(round 3.4) ;; 3
(round -3.4) ;; -3
(round 3.5) ;; 4
(round -3.5) ;; -4

(setq num 3)
(setq num (1+ num))
(message "%d" num)

(sin 60)
(sqrt 4)
(/= 3 4)
(exp 1)
(expt 2 3)
(logb 4)
(log10 1000)
(setq random-number(random 100))
(setq foo "abc\000abc")
(concat "abc" "def")
