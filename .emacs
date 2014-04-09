;; highlight the current line set a custom face, so we can
;; recognize from the normal marking (selection)

(global-set-key (kbd "M-RET") 'ns-toggle-fullscreen)

(defface hl-line '((t (:background "grey21")))
  "Face to use for `hl-line-face'." :group 'hl-line)
(setq hl-line-face 'hl-line)
(global-hl-line-mode t) ; turn it on for all modes by default

(transient-mark-mode 1)
(column-number-mode 1)

(add-to-list 'load-path "~/.emacs.d/vendor")

(add-to-list 'auto-mode-alist '("\\.esp\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.frag\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.vm\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . html-mode))

(autoload 'ecmascript-mode "ecmascript-mode" "ECMA Mode." t)
(add-to-list 'auto-mode-alist '("\\.as\\'" . ecmascript-mode))

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;; (add-to-list 'auto-mode-alist '("\\.js\\'" . ecmascript-mode))

(autoload 'json-mode "json-mode" "JSON Mode." nil t)
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

(autoload 'css-mode "css-mode" "CSS Mode." t)
(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))

(autoload 'less-css-mode "less-css-mode" "LESS Mode." t)
(add-to-list 'auto-mode-alist '("\\.less\\'" . less-css-mode))

(autoload 'thrift-mode "thrift-mode" "Thrift Mode." t)
(add-to-list 'auto-mode-alist '("\\.thrift\\'" . thrift-mode))

(autoload 'php-mode "php-mode" "PHP Mode." t)
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . php-mode))

(require 'coffee-mode)
(require 'mustache-mode)
(require 'sws-mode)
(require 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

;; ruby                                                                         
;; based on http://www.rubygarden.org/Ruby/page/show/InstallingEmacsExtensions  
;;                                                                              

 (autoload 'ruby-mode "ruby-mode"
     "Mode for editing ruby source files")
 (add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
 (add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
 (add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
 (add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))
 (autoload 'run-ruby "inf-ruby"
     "Run an inferior Ruby process")
 (autoload 'inf-ruby-keys "inf-ruby"
     "Set local key defs for inf-ruby in ruby-mode")
 (add-hook 'ruby-mode-hook
     '(lambda ()
         (inf-ruby-keys)))
 ;; If you have Emacs 19.2x or older, use rubydb2x                              
 (autoload 'rubydb "rubydb3x" "Ruby debugger" t)
 ;; uncomment the next line if you want syntax highlighting                     
 (add-hook 'ruby-mode-hook 'turn-on-font-lock)

(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 2)


(setq backup-directory-alist
      (cons '("." . "~/.emacs-backups") backup-directory-alist))

;; (require 'find-recursive)
;; load sml-mode setup code
(load "~/.emacs.d/vendor/sml-mode/sml-mode-startup")
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(gud-gdb-command-name "gdb --annotate=1")
 '(initial-buffer-choice t)
 '(js2-pretty-multiline-declarations t)
 '(js2-allow-keywords-as-property-names t)
 '(js2-cleanup-whitespace t)
 '(js2-enter-indents-newline t)
 '(large-file-warning-threshold nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


;; Define Skeletons for HTML pages
(define-skeleton xhtml1t-throwaway
  "Throwaway XHTML 1.0 Transitional skeleton"
  ""
  "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n"
	"  \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n"
  "\n"
  "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n"
  "  <head>\n"
	"    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>\n"
  "\n"
	"    <title>untitled</title>\n"
	"\n"
  "  </head>\n"
  "\n"
  "  <body>\n"
  "\n"
  "  </body>\n"
  "</html>")

(define-auto-insert "\\.html\\'" 'xhtml1t-throwaway)

;; (load "~/.emacs.d/floobits/floobits.el")