;;{{{Basic setting
;; set tab width.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq-default tab-width 4)
;; using space instead of tabs. 
(setq-default indent-tabs-mode nil)
;; packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;; ssh
(require 'ssh)
(add-hook 'ssh-mode-hook
          (lambda ()
            (setq ssh-directory-tracking-mode t)
            (shell-dirtrack-mode t)
            (setq dirtrackp nil)))
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)
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
 '(delete-selection-mode nil)
 '(elpy-rpc-python-command "python3")
 '(markdown-command "/usr/bin/pandoc")
 '(package-selected-packages
   (quote
    (markdown-mode+ markdown-mode elpy auto-complete python-mode ssh))))
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
(elpy-enable)
;; Python.el
(setq python-indent 4)
;; (setq python-shell-interpreter "python3"
;;       python-shell-interpreter-args "")
(setq python-shell-interpreter "ipython3"
      python-shell-interpreter-args "--simple-prompt -i --gui=gtk3 --colors=Linux")
;;}}}

;;{{{Markdown setting.
;; Auto mode with Markdown filetype.
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
;;}}}

;;}}}

