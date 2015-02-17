;;; ===================================================
;;; + This is where everything starts, live in Emacs! +
;;; ===================================================

;; Keep track of loading time
(defconst emacs-start-time (current-time))

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Disable package load at startup
(setq package-enable-at-startup nil)

;; Babel: active code in Org-mode
(setq org-src-fontify-natively t)  ; enable active code block syntax highlight
(setq org-src-tab-acts-natively t) ; enable active code block tab indent
(org-babel-load-file "~/.emacs.d/sai.org")

;; Message how long it took to load everything (minus packages)
(let ((elapsed (float-time (time-subtract (current-time) emacs-start-time))))
  (message "Loading settings...done (%.3fs)" elapsed))
