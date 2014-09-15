
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "/usr/share/emacs/24.3/lisp/cedet/")
;(let ((default-directory "~/.emacs.d/"))
;  (normal-top-level-add-subdirs-to-load-path))

(let ((default-directory "/usr/share/emacs/24.3/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

;; (let ((default-directory "/usr/share/emacs/site-lisp/"))
;;   (normal-top-level-add-subdirs-to-load-path))


;; (add-to-list 'load-path "~/.emacs.d")
;; (add-to-list 'load-path "/usr/share/emacs/site-lisp/")
;; (add-to-list 'load-path "/usr/share/emacs/site-lisp/chicken/")
;; (add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
;; ;;(add-to-list 'load-path "/usr/share/emacs/site-lisp/auctex/")
;; (add-to-list 'load-path "~/.emacs.d/ecb")
;; (add-to-list 'load-path "~/.emacs.d/cedet-1.1")
;; (add-to-list 'load-path "~/.emacs.d/cclookup")


;; Regular ole bullshit
(require 'saveplace)
(setq-default save-place t)
(require 'ansi-color)
;(require 'cl)
(require 'ido)
(ido-mode t)
;; init.el
(require 'package)
(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Eldoc
(require 'eldoc)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
                                        ;(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)


;; General Settings
(setq inhibit-startup-message t)
(transient-mark-mode t)
                                        ;(menu-bar-mode -1)
(setq compilation-window-height 8)
(mouse-avoidance-mode 'jump)
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(line-number-mode 1)
(column-number-mode 1)
(set-face-bold-p 'bold nil) ;; Disable bold fonts
(show-paren-mode t)
(auto-compression-mode 1)
(put 'upcase-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
(setq undo-limit 100000)
(setq fill-column 80)
(setq case-fold-search t)
(setq show-trailing-whitespace t)
(setq c-default-style "bsd") ;; Set BSD indent Style.
(fset 'yes-or-no-p 'y-or-n-p)
(setq-default indent-tabs-mode nil)
(setq font-lock-maximum-decoration t)
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)
(display-time)
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(blink-cursor-mode 1)
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; Highlight line!
(require 'highlight-current-line)
(highlight-current-line-on t)
(set-face-background 'highlight-current-line-face "grey12")

;; CUSTOM KEYS
(global-set-key (kbd "C-x a r") 'align-regexp)
(global-set-key [f2] (quote align-beginning-of-defun))
(global-set-key [f3] 'scroll-line-up)
(global-set-key [S-f8] 'nroff-fill-mode)
(global-set-key [f10] (quote align-end-of-defun))
(global-set-key [M-s] 'center-line)
(global-set-key "\M-\C-h" 'backward-kill-word)
(global-set-key "\M-\C-r" 'query-replace)
(global-set-key "\M-r" 'replace-string)
(global-set-key "\M-g" 'goto-line)
(global-set-key "\M-h" 'help-command)

;;  Colours
(require 'color-theme-hober2)
(require 'color-theme)
(color-theme-hober2)



;; Nuke whitespace
(defun my-delete-leading-whitespace (start end)
  "Delete whitespace at the beginning of each line in region."
  (interactive "*r")
  (save-excursion
    (if (not (bolp)) (forward-line 1))
    (delete-whitespace-rectangle (point) end nil)))
(global-set-key (kbd "C-x C-l") 'my-delete-leading-whitespace)



;;; **********************************************************************
;;; CEDET
;;; **********************************************************************
(setq semantic-load-turn-everything-on t)
(load-file "/usr/share/emacs/24.3/lisp/cedet/cedet.elc")
(load-file "/usr/share/emacs/24.3/lisp/cedet/semantic.elc")

(when (and (getenv "EMACS_SEMANTIC")
           (locate-library "cedet")
           (string= (file-name-nondirectory (locate-library "cedet"))
                    "cedet.elc")
           (load-file (locate-library "cedet")))
  )


(require 'cedet-files)
(require 'eassist)
(require 'ede)
(require 'semantic)
(require 'semantic/analyze)
(require 'semantic/analyze/complete)
(require 'semantic/analyze/debug)
(require 'semantic/analyze/fcn)
(require 'semantic/analyze/refs)
(require 'semantic/bovine)
(require 'semantic/bovine/gcc)
(require 'semantic/bovine/grammar)
(require 'semantic/bovine/make)
(require 'semantic/chart)
(require 'semantic/complete)
(require 'semantic/db)
(require 'semantic/db-debug)
(require 'semantic/db-ebrowse)
(require 'semantic/db-el)
(require 'semantic/db-file)
(require 'semantic/db-find)
(require 'semantic/db-javascript)
(require 'semantic/db-mode)
(require 'semantic/db-ref)
(require 'semantic/db-typecache)
(require 'semantic/dep)
(require 'semantic/doc)
(require 'semantic/ede-grammar)
(require 'semantic/edit)
(require 'semantic/find)
(require 'semantic/format)
(require 'semantic/fw)
(require 'semantic/grammar)

(require 'semantic/debug)
(require 'semantic/ia)
(require 'semantic/lex)
(require 'semantic/symref)
(require 'semantic/tag)
(require 'semantic/wisent/wisent)
(require 'srecode)

(require 'auto-complete-config)

;; Turn on project management.

(setq ede-locate-setup-options '(ede-locate-global ede-locate-locate ede-locate-base))
(global-ede-mode 1)
(global-srecode-minor-mode 1)

;; Kick off the semantic bovinator, function menu, C-warning mode, and flashing
;; brackets.

(setq semantic-default-submodes (append semantic-default-submodes
                                        '(global-semantic-idle-local-symbol-highlight-mode
                                          global-semantic-idle-summary-mode
                                          global-semantic-decoration-mode
                                          global-semantic-highlight-func-mode
                                          global-semantic-stickyfunc-mode
                                          global-semantic-show-unmatched-syntax-mode
                                          global-semantic-mru-bookmark-mode)))

(setq semantic-decoration-styles '(("semantic-decoration-on-includes" . t)
                                   ("semantic-decoration-on-protected-members")
                                   ("semantic-decoration-on-private-members")))

                                        ;(semantic-mode 1)
;(semanticdb-enable-gnu-global-databases 'c-mode)
;(semanticdb-enable-gnu-global-databases 'c++-mode)

;; auto-complete should use Semantic.

(ac-config-default)
(ac-set-trigger-key "TAB")


;; Some key bindings

(define-key semantic-mode-map (kbd "C-c , .") 'semantic-ia-fast-jump)
(define-key semantic-mode-map (kbd "C-c , P") 'semantic-analyze-proto-impl-toggle)
(define-key semantic-mode-map (kbd "C-c , h") 'semantic-decoration-include-visit)

                                        ;(global-ede-mode 1)

;; CC-mde
(add-hook 'c-mode-common-hook '(lambda ()
                                 (setq ac-sources (append '(ac-source-semantic) ac-sources))
                                 ))



;; Autocomplete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (expand-file-name
                                         "~/.emacs.d/elpa/auto-complete-20140824.1658/dict"))
(setq ac-comphist-file (expand-file-name
                        "~/.emacs.d/ac-comphist.dat"))
(ac-config-default)
(setq-default ac-sources '(ac-source-semantic-raw))
(add-hook 'c-mode-common-hook 'nix-setup-auto-complete-semantic t)



(setq cogl-base-dir "/usr/include/cogl/")
(semantic-add-system-include cogl-base-dir 'c-mode)
(setq clutter-base-dir "/usr/include/clutter-1.0/")
(semantic-add-system-include clutter-base-dir 'c-mode)



(defun which-active-modes ()
  "Give a message of which minor modes are enabled in the current buffer."
  (interactive)
  (let ((active-modes))
    (mapc (lambda (mode) (condition-case nil
                             (if (and (symbolp mode) (symbol-value mode))
                                 (add-to-list 'active-modes mode))
                           (error nil) ))
          minor-mode-list)
    (message "Active modes are %s" active-modes)))



(defun find-definition (arg)
  "Jump to the definition of the symbol, type or function at point.
  With prefix arg, find in other window."
  (interactive "P")
  (let* ((tag (or (semantic-idle-summary-current-symbol-info-context)
                  (semantic-idle-summary-current-symbol-info-brutish)
                  (error "No known tag at point")))
         (pos (or (semantic-tag-start tag)
                  (error "Tag definition not found")))
         (file (semantic-tag-file-name tag)))
    (if file
        (if arg (find-file-other-window file) (find-file file))
      (if arg (switch-to-buffer-other-window (current-buffer))))
    (push-mark)
    (goto-char pos)
    (end-of-line)))

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
;; Add all of the hooks...
  (setq-mode-local c-mode semanticdb-find-default-throttle
                   '(project unloaded system recursive))
  (setq-mode-local c++-mode semanticdb-find-default-throttle
                   '(project unloaded system recursive))
  (setq-mode-local erlang-mode semanticdb-find-default-throttle
                   '(project unloaded system recursive))

(defun my-c-mode-hook ()
  (require 'semantic/bovine/c)

 (semantic-mode 1)
 (global-semanticdb-minor-mode 1)
  )

(add-hook 'c-mode-hook 'my-c-mode-hook)
