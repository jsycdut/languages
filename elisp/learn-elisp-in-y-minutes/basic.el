;; practice from https://learnxinyminutes.com/docs/zh-cn/elisp-cn/
(+ 2 2)
(+ 2 18)
(+ 2 (+ 1 5))

(setq my-name "jsy")

(insert "Hello")Hello

(insert "Hello, I am " my-name)

(defun hello () (insert "Hello, I am " my-name))

(hello)

(defun hello (name) (insert "Hello, " name))

(hello my-name)

(switch-to-buffer-other-window "*test*")
(progn
  (switch-to-buffer-other-window "*test*")
  (hello "you"))

(progn
  (switch-to-buffer-other-window "*test*")
  ;;(erase-buffer)
  (hello "\nthere\n"))

(progn
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (hello my-name)
  (other-window 1))

(let ((local-name "you are jsy"))
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (hello local-name)
  (other-window 1))

(format "Hello %s!" "visitor")

(defun greeting (name)
  (let ((visitor "kp"))
  (insert (format "Hello %s!\n\nI am %s."
                  name
                  visitor))))
(greeting "jsy")
Hello jsy!

I am kp.

(defun replace-hello-by-bonjour ()
  (switch-to-buffer-other-window "*test*")
  (goto-char (point-min))
  (while (search-forward "Hello" nil t)
    (replace-match "Bonjour"))
  (other-window 1))

(replace-hello-by-bonjour)

(defun hello (name)
  (insert (format "Hello %s!\n" name)))
(defun hello-to-bonjour ()
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (mapcar 'hello list-of-names)
  (goto-char (point-min))
  (while (search-forward "Hello" nil t)
    (replace-match "Bonjour"))
  (other-window 1))

(setq list-of-names '("Sarah" "Chole" "Mathilde"))
(hello-to-bonjour)

(defun boldify-names ()
  (switch-to-buffer-other-window "*test*")
  (goto-char (point-min))
  (while (re-search-forward "Bonjour \\(.+\\)!" nil t)
    (add-text-properties (match-beginning 1)
                         (match-end 1)
                         (list 'face 'italic)))
  (other-window 1))
(boldify-names)
