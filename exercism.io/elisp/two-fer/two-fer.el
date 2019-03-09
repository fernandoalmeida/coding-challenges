;;; two-fer.el --- Two-fer Exercise (exercism)

;;; Commentary:

;;; Code:

(defun two-fer (&optional name)
  "One for X, one for me."
  (concat "One for " (or name "you") ", one for me.")
  )

(provide 'two-fer)
;;; two-fer.el ends here
