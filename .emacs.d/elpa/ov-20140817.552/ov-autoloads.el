;;; ov-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (ov-clear) "ov" "ov.el" (21526 41255 58308 479000))
;;; Generated autoloads from ov.el

(autoload 'ov-clear "ov" "\
Clear overlays satisfying a condition.

If PROP-OR-BEG is a symbol, clear overlays with this property set to non-nil.

If VAL-OR-END is non-nil, the specified property's value should
`equal' to this value.

If both of these are numbers, clear the overlays between these points.

If BEG and END are numbers, clear the overlays with specified
property and value between these points.

With no arguments, clear all overlays in the buffer.

\(fn &optional PROP-OR-BEG (val-or-end (quote any)) BEG END)" t nil)

;;;***

;;;### (autoloads nil nil ("ov-pkg.el") (21526 41255 65005 262000))

;;;***

(provide 'ov-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ov-autoloads.el ends here
