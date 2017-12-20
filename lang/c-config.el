;;;;;;;;;;;;;;;;;;
;;; ATTRIBUTION ;;
;;;;;;;;;;;;;;;;;;

;; almost all of the below comes from Tudho's excellent guide at:
;; https://tuhdo.github.io/c-ide.html

;;; Code

(use-package helm-gtags
  :ensure t
  :init (progn (require 'helm-gtags))
  :config (progn
            (setq
             ;; settings
             helm-gtags-ignore-case t
             helm-gtags-auto-update t
             helm-gtags-use-input-at-cursor t
             helm-gtags-pulse-at-cursor t
             helm-gtags-prefix-key "\C-cg"
             helm-gtags-suggested-key-mapping t)
            ;; hooks
            (add-hook 'dired-mode-hook 'helm-gtags-mode)
            (add-hook 'eshell-mode-hook 'helm-gtags-mode)
            (add-hook 'c-mode-hook 'helm-gtags-mode)
            (add-hook 'c++-mode-hook 'helm-gtags-mode)
            (add-hook 'asm-mode-hook 'helm-gtags-mode)
            ;; keybindings
            (define-key helm-gtags-mode-map (kbd "C-c g a") 'helm-gtags-tags-in-this-function)
            (define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-select)
            (define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
            (define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
            (define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
            (define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)
            (define-key helm-gtags-mode-map (kbd "C-c g s") 'helm-gtags-find-symbol)
            (define-key helm-gtags-mode-map (kbd "C-c g r") 'helm-gtags-find-rtag)
            (define-key helm-gtags-mode-map (kbd "C-c g h") 'helm-gtags-show-stack)))

(use-package function-args
  :ensure t
  :init (progn (require 'function-args))
  :config (progn (fa-config-default)))


;;; c-config.el ends here
