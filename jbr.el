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

(require 'undo-tree)
(global-undo-tree-mode)

(require 'sibilant-mode)

(textmate-mode)
(require 'peepopen)
(setq ns-pop-up-frames nil)
(peepopen-bind-ns-keys)

