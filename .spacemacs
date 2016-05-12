;; -*- mode: dotspacemacs -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; --------------------------------------------------------
     ;; Example of useful layers you may want to use right away
     ;; Uncomment a layer name and press C-c C-c to install it
     ;; --------------------------------------------------------
     auto-completion
     better-defaults
     colors
     ;; diff-hl
     ;; dash
     ;; editorconfig
     git
     github
     ;; eyebrowse
     html
     javascript
     ;; markdown
     org
     ;; php
     ;; prodigy
     ;; shell-scripts
     shell
     smex
     ;; syntax-checking
     version-control
     )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages'()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function. This function is called at the very startup of Spacemacs initialization before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'hybrid
   ;; If non nil output loading progess in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to a .PNG file.
   ;; If the value is nil then no banner is displayed.
   ;; dotspacemacs-startup-banner 'official
   dotspacemacs-startup-banner 'official
   ;; t if you always want to see the changelog at startup
   dotspacemacs-always-show-changelog t
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(sanityinc-solarized-dark
                         gruvbox
                         spacemacs-dark
                         monokai
                         twilight-anti-bright
                         birds-of-paradise-plus
                         cyberpunk
                         gotham
                         molokai)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil the paste micro-state is enabled. While enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state t
   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.5
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar nil
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   ;; dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   ;; dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode nil
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-search-tools '("grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil

   ;; Added by hand, does not work when added to dotspacemacs/user-config:
   dotspacemacs-line-numbers t
   ;; dotspacemacs-smartparens-strict-mode t
   )
  )

(defun dotspacemacs/user-config ()

  (setq-default
   c-basic-offset 4
   indent-tabs-mode nil
   split-width-threshold 0
   js2-basic-offset 2
   js-indent-level 2
   )
  (emmet-mode 1)
  (set-face-attribute 'default nil :height 130)

  (set-language-environment 'utf-8)
  (setq locale-coding-system 'utf-8)
  (set-default-coding-systems 'utf-8)
  (set-terminal-coding-system 'utf-8)
  (prefer-coding-system 'utf-8)

  (evil-leader/set-key
    "os" 'just-one-space)

  ;;;; Custom Functions
  (defun duplicate-line-or-region (&optional n)
    "Duplicate current line, or region if active.With argument N, make N copies.With negative N, comment out original line and use the absolute value."
    (interactive "*p")
    (let ((use-region (use-region-p)))
      (save-excursion
        (let ((text (if use-region
                        (buffer-substring (region-beginning) (region-end))
                      (prog1 (thing-at-point 'line)
                        (end-of-line)
                        (if (< 0 (forward-line 1))
                            (newline))))))
          (dotimes (i (abs (or n 1)))
            (insert text))))
      (if use-region nil
        (let ((pos (- (point) (line-beginning-position))))
          (if (> 0 n)
              (comment-region (line-beginning-position) (line-end-position)))
          (forward-line 1)
          (forward-char pos)))))

  (defun execute-c-program ()
    "Run C programs directly from within emacs."
    (interactive)
    (defvar foo)
    (setq foo (concat "gcc " (buffer-name) " && ./a.out" ))
    (shell-command foo))

  (defadvice kill-region (before slick-cut activate compile)
    "When called interactively with no active region, kill a single line instead."
    (interactive
     (if mark-active
         (list (region-beginning) (region-end))
       (list (line-beginning-position) (line-beginning-position 2)))))

  (defadvice kill-ring-save (before slick-copy activate compile)
    "When called interactively with no active region, copy a single line instead."
    (interactive
     (if mark-active
         (list (region-beginning) (region-end))
       (message "Copied line")
       (list (line-beginning-position) (line-beginning-position 2)))))

  (defun ruthlessly-kill-whole-line ()
    "Deletes a line, but does not put it in the kill-ring."
    (interactive)
    (move-beginning-of-line 1)
    (kill-line 1)
    (setq kill-ring (cdr kill-ring)))

  (defun ruthlessly-kill-line ()
    "Deletes till the end of the line, starting from the current column, but does not put it in the kill-ring."
    (interactive)
    (kill-line)
    (setq kill-ring (cdr kill-ring)))

  (defun my-delete-word (arg)
    "Delete characters forward until encountering the end of a word. With argument, do this that many times. This command does not push text to `kill-ring'."
    (interactive "p")
    (delete-region
     (point)
     (progn
       (forward-word arg)
       (point))))

  (defun my-backward-delete-word (arg)
    "Delete characters backward until encountering the beginning of a word.
With argument, do this that many times.
This command does not push text to `kill-ring'."
    (interactive "p")
    (my-delete-word (- arg)))

  (defun comment-or-uncomment-region-or-line ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
      (if (region-active-p)
          (setq beg (region-beginning) end (region-end))
        (setq beg (line-beginning-position) end (line-end-position)))
      (comment-or-uncomment-region beg end)))

  (defun insert-my-c++-headers ()
    "Adds default code on creating a new c++ file."
    (when (= 0 (buffer-size))
      (insert "#include <iostream>\nusing namespace std;\n\nint main()\n{\n    return 0;\n}\n")))
  (add-hook 'c++-mode-hook 'insert-my-c++-headers)

  ;; (defun insert-my-c-headers ()
  ;; "Adds default code on creating a new c file."
  ;;   (when (= 0 (buffer-size))
  ;;     (insert "#include <stdio.h>\n#include <stdlib.h>\n\nint main()\n{\n    return 0;\n}\n")))
  ;; (add-hook 'c-mode-hook 'insert-my-c-headers)

  (defun open-shell-new-buffer ()
    "Invoke shell in a new vertically split buffer."
    (interactive)
    (pop-to-buffer (get-buffer-create (generate-new-buffer-name "shell")))
    ;; must have 'shell' added to your dotspacemacs-configuration-layers to work
    (multi-term))

  ;;;; Keybindings
  (global-set-key (kbd "C-k") 'ruthlessly-kill-line)
  (global-set-key (kbd "C-q") 'duplicate-line-or-region)
  (global-set-key (kbd "C-!") 'open-shell-new-buffer)
  (global-set-key (kbd "C-S-<backspace>") 'ruthlessly-kill-whole-line)
  (global-set-key (kbd "M-;") 'comment-or-uncomment-region-or-line)
  (global-set-key (kbd "M-<backspace>") 'my-backward-delete-word)
  (global-set-key (kbd "M-<delete>") 'my-backward-delete-word)
  (global-set-key (kbd "M-d") 'my-delete-word)
  (global-set-key (kbd "C-w") 'kill-whole-line)
  (global-set-key (kbd "C-<f1>") 'execute-c-program)

  )
