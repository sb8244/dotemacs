;; http://ck.kennt-wayne.de/2012/aug/find-project-file-with-fuzzy-matching-in-emacs
(require 'simp)

(simp-project-define
 '(:has (.git)
   :ignore (tmp coverage log vendor .git public/system public/assets)))

(global-set-key (kbd "C-c f") 'simp-project-find-file)
(global-set-key (kbd "C-c d") 'simp-project-root-dired)
(global-set-key (kbd "C-c s") 'simp-project-rgrep)
(global-set-key (kbd "C-c S") 'simp-project-rgrep-dwim)
(global-set-key (kbd "C-c b") 'simp-project-ibuffer-files-only)
(global-set-key (kbd "C-c B") 'simp-project-ibuffer)
(global-set-key (kbd "C-c C-f") 'simp-project-with-bookmark-find-file)
(global-set-key (kbd "C-c C-s") 'simp-project-with-bookmark-rgrep)
(global-set-key (kbd "C-c C-b") 'simp-project-with-bookmark-ibuffer)

(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)
