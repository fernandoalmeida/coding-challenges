;;; hello-world.el --- Hello World Exercise (exercism)

;;; Commentary:

;;; Code:
(defun hello (&optional name)
  "A `Hello, World!' with an optional NAME argument."
  (format "Hello, %s!" (or name "World")))

(provide 'hello-world)
;;; hello-world.el ends here
