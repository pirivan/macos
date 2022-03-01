;; enable mouse support
(xterm-mouse-mode t)
(global-set-key [mouse-4] 'scroll-down-line)
(global-set-key [mouse-5] 'scroll-up-line)
(setq x-select-enable-clipboard t)

;; disable whitespace marker
(setq prelude-whitespace nil)

;; osx/emacs copy/paste
;; required: brew install xclip
(prelude-require-package 'xclip)
(xclip-mode t)

;; enable auto-fill mode on text documents
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Markdown mode (https://jblevins.org/projects/markdown-mode/)
(setq markdown-command "pandoc -t html5 --mathjax --highlight-style pygments --standalone")

;; disable prelude's guru-mode
(setq prelude-guru nil)
