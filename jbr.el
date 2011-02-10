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
