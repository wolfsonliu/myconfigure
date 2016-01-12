;; {{{ Basic setting
(setq-default indent-tabs-mode nil)
;; }}}

;; {{{ Load extension
;; {{{ Folding mode
(if (load "folding" 'nomessage 'noerror)
    (folding-mode-add-find-file-hook))
;; }}}
;; }}}

;; {{{ Install extensions if they're missing

;; }}}

;;;; C/C++ style setting.
;; Indentation setting.
(setq-default c-basic-offset 4)

;;;; LaTex style setting.
;; Indentation setting.
(setq-default tex-basic-offset 4)

;;;; Markdown setting.
;; Auto mode with Markdown filetype.
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
