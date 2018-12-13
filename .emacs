;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------

;;x(set-face-attribute 'default nil :hight 120)

;; backup and autosave
(setq backup-by-copying t)
(setq backup-directory-alist `(("." . ,"~/.emacs_backup/")))
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

(setq auto-save-file-name-transforms `((".*" ,"~/.emacs_backup/" t)))

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(package-initialize)
(elpy-enable)

(defvar myPackages
  '(better-defaults
    elpy
    material-theme))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; BASIC CUSTOMIZATION
;; --------------------------------------

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally

;; PYTHON CONFIGURATION
;; --------------------------------------

;; toggle comments
(global-set-key (kbd "C-#") 'comment-uncomment-region)

;; init.el ends here
