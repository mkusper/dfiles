;;; ace-window-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (ace-window aw-generic aw-list-visual-area) "ace-window"
;;;;;;  "ace-window.el" (21526 41244 974982 359000))
;;; Generated autoloads from ace-window.el

(autoload 'aw-list-visual-area "ace-window" "\
Forward to `ace-jump-list-visual-area', removing invisible frames.

\(fn)" nil nil)

(autoload 'aw-generic "ace-window" "\
Create a window-manipulating function.
MODE-LINE is a string to display while a window is being selected.
HANDLER is a function that takes a window argument.

\(fn MODE-LINE HANDLER)" nil t)

(defalias 'ace-select-window (aw-generic " Ace - Window" aw-switch-to-window) "\
Ace select window.")

(defalias 'ace-delete-window (aw-generic " Ace - Delete Window" aw-delete-window) "\
Ace delete window.")

(defalias 'ace-swap-window (aw-generic " Ace - Swap Window" aw-swap-window) "\
Ace swap window.")

(autoload 'ace-window "ace-window" "\
Select a window with `ace-jump-mode'and perform an action based on prefix ARG.
Variations are described below.

By default, behaves like extended `other-window'.

Prefixed with one \\[universal-argument], does a swap between
 selected window and current window, so that the selected buffer
 moves to current window (and current buffer moves to selected
 window).

Prefixed with two \\[universal-argument]'s, deletes the selected
 window.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("ace-window-pkg.el") (21526 41244 982368
;;;;;;  754000))

;;;***

(provide 'ace-window-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ace-window-autoloads.el ends here
