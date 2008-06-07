
(defun search-keywords ()
  (re-search-forward "\\(\\\\FU{\\|\\\\SF{\\|\\\\kwd{\\|\\\\GF{\\|\\\\V{\\)\\([a-z0-9-+*]*\\)}" nil t))

(setq kwd-buffer (get-buffer-create "keywords-lispref"))

(progn (set-buffer "lispref.tex")
       (goto-char 0)
       (do ((findings (search-keywords) (search-keywords)) keywords)
	   ((null findings) 
	    (dolist (word-output(sort (delete-duplicates keywords :test #'string-equal) #'string-lessp))
	      (princ word-output kwd-buffer) (princ "\n" kwd-buffer)))
	 (push (upcase (buffer-substring-no-properties (match-beginning 2) (match-end 2))) keywords)))








