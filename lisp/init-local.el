;;; init-local.el --- KiwiXR's customized code
;;; Commentary:

;; use ob-async to provide async execution in org-mode
(require-package 'ob-async)

;; use advance-words-count.el to summarize chinese writing statistics
(add-to-list 'load-path "~/.emacs.d/elpa/advance-words-count.el")
(require 'advance-words-count)

;; browse-url leveage from https://www.reddit.com/r/emacs/comments/i0f92n/wsl2_orgprotocol/
(when (and (eq system-type 'gnu/linux)
           (string-match
            "Linux.*Microsoft.*Linux"
            (shell-command-to-string "uname -a")))
  (setq
   browse-url-generic-program  "/mnt/c/Windows/System32/cmd.exe"
   browse-url-generic-args     '("/c" "start")
   browse-url-browser-function #'browse-url-generic))

(provide 'init-local)
;;; init-local.el ends here
