;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Rafael Moraes"
      user-mail-address "hafer.moraes@gmail.com")

(add-hook 'window-setup-hook #'toggle-frame-maximized)

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.



;; redimensionamento das janelas internas (fonte: https://www.emacswiki.org/emacs/WindowResize)
(global-set-key (kbd "M-s-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-s-<up>") 'shrink-window)
(global-set-key (kbd "M-s-<down>") 'enlarge-window)

;; UTF-8 please
(setq locale-coding-system 'utf-8) ; pretty
(set-terminal-coding-system 'utf-8) ; pretty
(set-keyboard-coding-system 'utf-8) ; pretty
(set-selection-coding-system 'utf-8) ; please
(prefer-coding-system 'utf-8) ; with sugar on top

;; delete the region when typing, just like as we expect nowadays.
(delete-selection-mode t)

;; avisa se parênteses estão em número igual de abertura e fechamento
(show-paren-mode t)

(column-number-mode t)

;; LaTeX
;; https://tex.stackexchange.com/questions/275794/emacs-is-not-recognizing-files-as-latex-and-going-into-latex-mode
(setq auto-mode-alist (cons '("\\.tex$" . latex-mode) auto-mode-alist)) 
(setq LaTeX-indent-level 4) 
(setq LaTeX-item-indent 2)

;; Correção ortográfica
(setq ispell-dictionary "brasileiro")
;; easy spell check (fonte: https://www.emacswiki.org/emacs/FlySpell)
(global-set-key (kbd "<f8>") 'ispell-word)
(global-set-key (kbd "<f9>") 'ispell-region)

;; ESS (Emacs Speaks Statistics)
(setq ess-use-auto-complete t)
(setq ess-ask-for-ess-directory nil)

;; OrgMode
(setq org-image-actual-width 550)
(setq org-highlight-latex-and-related '(latex script entities))
(setq org-hide-emphasis-markers t)
(setq org-export-default-language "pt")
(setq org-support-shift-select (quote always))

;; Org Agenda
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-agenda-files '("~/gtd/agenda.org"   
                         "~/gtd/archive.org"
                         "~/gtd/delegate.org"
                         "~/gtd/inbox.org"
                         "~/gtd/incubate.org"
                         "~/gtd/journal.org"
                         "~/gtd/projects.org"
                         "~/gtd/reference.org"
                         "~/gtd/trash.org"
))

;; Org Noter
(setq org_notes (concat (getenv "HOME") "/Dropbox/org/dok/")
      org-directory org_notes
      deft-directory org_notes
      org-roam-directory org_notes
)

;; Org Babel
(org-babel-do-load-languages
   'org-babel-load-languages
   '( (R . t)
      (org . t)
      (python . t)
      (shell . t)
      (http . t)
      (sql . t)
    )
)
(setq org-confirm-babel-evaluate nil
      org-src-window-setup 'current-window
      org-src-strip-leading-and-trailing-blank-lines t
      org-src-preserve-indentation nil
      org-edit-src-content-indentation 0   ;;https://emacs.stackexchange.com/a/51690
      org-src-fontify-natively t
      org-src-tab-acts-natively t
)

;; Org Capture (GTD)
(define-key global-map (kbd "<f7>") 'org-capture)

;; https://sachachua.com/blog/2015/02/learn-take-notes-efficiently-org-mode/
(global-set-key (kbd "<f5>") (lambda () (interactive) (find-file "~/gtd/inbox.org")))

(setq org-capture-templates '
           (
                  ("i"                ; key
                   "Inbox"            ; description
                   entry              ; type
                   (file+headline "~/gtd/inbox.org" "inbox")       ; target
                   "* TODO %^{Título}\n %^{Breve descritivo da tarefa} \n:PROPERTIES:\n\tCreated:%U \n:END: \n\n%?"  ; template
                   ;;:prepend t        ; properties
                   ;;:empty-lines 1    ; properties
                   ;;:created t        ; properties
                   )
                   ("j"                ; key
                    "journal"          ; description
                    entry              ; type
                    (file+datetree "~/gtd/journal.org") ; target
                    "** %U - %^{atividade} :LOG: \n %^{descrição}\n"  ; template
                   )
           )
)
;; https://blog.aaronbieber.com/2017/03/19/organizing-notes-with-refle.html
(setq org-refile-targets '((org-agenda-files :maxlevel . 3)))
(setq org-refile-use-outline-path 'file)
(setq org-refile-allow-creating-parent-nodes 'confirm) 

;; pdftools
;; automatically turns on midnight-mode for pdfs
(add-hook 'pdf-view-mode-hook (lambda () (pdf-view-midnight-minor-mode))) 
;; set the amber profile as default (see below)
(setq pdf-view-midnight-colors '("light gray" . "gray14" )) 
