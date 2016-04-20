;; Enable Emacs package manager
(require 'package)
(add-to-list 'package-archives '("elpa" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

;; Smart buffer switching
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;; Display line numbers to the left of buffers
(require 'linum)
(global-linum-mode 1)

;; Show line number and column in the bottom status bar
(setq line-number-mode t)
(setq column-number-mode t)

;; Highlight matching parenteses
(show-paren-mode t)

;; Save backups to ~/.emacs-saves
(setq
   backup-by-copying t ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.emacs-saves")) ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t) ; use versioned backups

;; Hide startup screen
(setq inhibit-startup-screen t)

;; Spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Highlight trailing whitespace, tabs, 80-column rule
;; See: http://www.emacswiki.org/emacs/WhiteSpace
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

;; It is very unusual that you dont want to end a file with a newline
(setq require-final-newline 'ask)

;; Set the font
(set-default-font "Monospace-10"

;; Hide tool-bar (new, open, save, etc)
(tool-bar-mode -1)

;; Increase the max length of the log before truncating
(setq message-log-max 2000)

;; What to do if visiting a symbolic link to a file under version
;; control. Editing such a file through the link bypasses the version
;; control system, which is dangerous and probably not what you want.
;; If this variable is t, VC follows the link and visits the real
;; file, telling you about it in the echo area. If it is `ask', VC
;; asks for confirmation whether it should follow the link. If nil,
;; the link is visited and a warning displayed.
(setq vc-follow-symlinks t)

;; Fix for Dead Keys, by default in ELX 14.04 the ~ key doesn't work.
;; https://bugs.launchpad.net/emacs-snapshot/+bug/1251176
(require 'iso-transl)
