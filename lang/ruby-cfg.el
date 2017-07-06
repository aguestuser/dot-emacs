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
(add-hook 'ruby-mode-hook 'robe-mode) ; add hook
(eval-after-load 'company
  '(push 'company-robe company-backends)) ; company mode
(add-hook 'robe-mode-hook 'ac-robe-setup) ; auto-complete


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
