;; required, setup cpputils-cmake
(add-hook 'c-mode-common-hook
          (lambda ()
            (if (derived-mode-p 'c-mode 'c++-mode)
                (cppcm-reload-all)
              )))

;; OPTIONAL, avoid typing full path when starting gdb
(global-set-key (kbd "C-c C-g")
 '(lambda ()(interactive) (gud-gdb (concat "gdb --fullname " (cppcm-get-exe-path-current-buffer)))))

;; init cmake mode 
 (setq load-path (cons (expand-file-name "~/.emacs.d/elpa/cmake-mode-20140217.659") load-path))
 (require 'cmake-mode)

;; init company mode
(add-hook 'after-init-hook 'global-company-mode)

;; add c header to company backends
;; (add-to-list 'company-backends 'company-c-headers)
