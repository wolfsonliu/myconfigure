;;{{{Basic setting
;; set tab width.
(setq-default tab-width 4)
;; using space instead of tabs. 
(setq-default indent-tabs-mode nil)
;;}}}

;;{{{Load extension
;;{{{ Folding mode
(if (load "folding" 'nomessage 'noerror)
    (folding-mode-add-find-file-hook))
(folding-add-to-marks-list 'r-mode "###{{{" "###}}}" nil t)
(folding-add-to-marks-list 'ess-mode "###{{{" "###}}}" nil t)
;;(require 'auto-complete)
;;}}}
;;}}}

;;{{{ Install extensions if they're missing

;;}}}

;;{{{Language Specific Setting

;;{{{C/C++ setting.
;; Indentation setting.
(setq-default c-basic-offset 4)
;;}}}


;;{{{LaTex setting.
;; Indentation setting.
(setq-default tex-basic-offset 4)
;;}}}

;;{{{R setting.
(setq ess-indent-level 4)
;;}}}

;;{{{Python setting.
; Python mode
;(add-to-list 'load-path "~/.emacs.d/python-mode") 
;(setq py-install-directory "~/.emacs.d/python-mode")
;(add-to-list 'load-path py-install-directory)
;(require 'python-mode)
; use IPython
;(setq-default py-shell-name "ipython")
;(setq-default py-which-bufname "IPython")
; use the wx backend, for both mayavi and matplotlib
;; (setq py-python-command-args
;;   '("--gui=gtk3" "--pylab=gtk3" "--colors=Linux" "--simple-prompt"))
;; (setq py-force-py-shell-name-p t)
;; ; switch to the interpreter after executing code
;; (setq py-shell-switch-buffers-on-execute-p t)
;; (setq py-switch-buffers-on-execute-p t)
;; ; don't split windows
;; (setq py-split-windows-on-execute-p nil)
;; ; try to automagically figure out indentation
;; (setq py-smart-indentation t)
;; EIN: Jupyter
;(add-to-list 'load-path "~/.emacs.d/emacs-ipython-notebook/lisp")                                       ;
;(require 'ein)
;; Python.el
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "--simple-prompt -i --gui=gtk3 --colors=Linux")
;;}}}

;;{{{Markdown setting.
;; Auto mode with Markdown filetype.
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
;;}}}

;;}}}

;;{{{Themes

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(markdown-command "/usr/bin/pandoc"))
;;}}}


