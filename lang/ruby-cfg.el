;;;;;;;;;;;;;;;;
;; ruby/rails ;;
;;;;;;;;;;;;;;;;

(use-package ruby-mode :ensure t)
(use-package rspec-mode :ensure t)
(use-package robe :ensure t)
(use-package projectile-rails :ensure t)

;; enable projectile-rails
(add-hook 'projectile-mode-hook 'projectile-rails-on)

;; enable robe-mode
(add-hook 'ruby-mode-hook 'robe-mode)

;; enable launching rspec from dired
(add-hook 'dired-mode-hook 'rspec-dired-mode)

;; enable inf-ruby (repl)
(add-hook 'after-init-hook 'inf-ruby-switch-setup)

(eval-after-load 'inf-ruby
  '(define-key inf-ruby-minor-mode-map
     (kbd "C-c C-s") 'inf-ruby-console-auto))

;; add rspec-mode snippets
(eval-after-load 'rspec-mode
  '(rspec-install-snippets))

;; disable expand-snippet class skeletons
(setq projectile-rails-expand-snippet nil)
