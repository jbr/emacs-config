(when window-system
  (add-to-list 'default-frame-alist '(width . 203))
  (add-to-list 'default-frame-alist '(height . 62))
  (set-default-font
   (concat "-apple-Anonymous_Pro-"
	   "medium-normal-normal-"
	   "*-12-*-*-*-m-0-iso10646-1")))

(setq-default truncate-lines t)
(setq make-backup-files nil
      auto-save-default nil)


(global-set-key (kbd "<s-return>") 'ns-toggle-fullscreen)
(global-set-key (kbd "M-SPC") 'hippie-expand)
(setq default-directory "~/code")

(defun mihai-indent ()
  "http://mihai.bazon.net/projects/editing-javascript-with-emacs-js2-mode"
  (interactive)
  (save-restriction
    (widen)
    (let* ((inhibit-point-motion-hooks t)
           (parse-status (save-excursion (syntax-ppss (point-at-bol))))
           (offset (- (current-column) (current-indentation)))
           (indentation (espresso--proper-indentation parse-status))
           node)

      (indent-line-to indentation)
      (when (> offset 0) (forward-char offset)))))

(defun indent-with-espresso ()
  "http://mihai.bazon.net/projects/editing-javascript-with-emacs-js2-mode"
  (require 'espresso)
  (setq espresso-indent-level 2
	indent-tabs-mode nil
	c-basic-offset 2)
  (set (make-local-variable 'indent-line-function) 'mihai-indent))

(add-hook 'js2-mode-hook 'indent-with-espresso)

(require 'undo-tree)
(global-undo-tree-mode)

(require 'sibilant-mode)

(textmate-mode)
(require 'peepopen)
(setq ns-pop-up-frames nil)
(peepopen-bind-ns-keys)

(define-key *textmate-mode-map* [(super w)] 'kill-this-buffer)
