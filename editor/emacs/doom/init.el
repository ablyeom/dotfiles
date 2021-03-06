;;; init.el -*- lexical-binding: t; -*-

(tool-bar-mode -1)
(toggle-scroll-bar -1)

(setq doom-leader-key ","
      doom-localleader-key ", m")

;; Make s and S the universal repeat-keys in evil-mode
(setq +default-repeat-keys (cons "s" "S"))
;; STOP binding ; and , as universal repeat-keys, they already have a job
(setq evil-snipe-parent-transient-map (make-sparse-keymap))

(doom! :input
       ;; chinese
       ;; japanese

       :completion
       (company          ; the ultimate code completion backend
        ;; +childframe
        )
       ;; (helm +fuzzy)     ; the *other* search engine for love and life
       ;; ido               ; the other *other* search engine...
       (ivy              ; a search engine for love and life
        ;; +fuzzy
        +icons
        +prescient
        )

       :ui
       ;; deft              ; notational velocity for Emacs
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for Emacs
       doom-quit         ; DOOM quit-message prompts when you quit Emacs
       ;; fill-column       ; a `fill-column' indicator
       hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       ;; hydra
       indent-guides     ; highlighted indent columns
       modeline          ; snazzy, Atom-inspired modeline, plus API
       nav-flash         ; blink the current line after jumping
       ;; neotree           ; a project drawer, like NERDTree for vim
       ophints           ; highlight the region an operation acts on
       (popup            ; tame sudden yet inevitable temporary windows
        +all             ; catch all popups that start with an asterix
        +defaults)       ; default popup rules
       ;; pretty-code       ; replace bits of code with pretty symbols
       ;; tabs              ; an tab bar for Emacs
       treemacs          ; a project drawer, like neotree but cooler
       ;; unicode           ; extended unicode support for various languages
       vc-gutter         ; vcs diff in the fringe
       vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       window-select     ; visually switch windows
       workspaces        ; tab emulation, persistence & separate workspaces

       :editor
       (evil +everywhere); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       fold              ; (nigh) universal code folding
       (format           ; automated prettiness
        ;; +onsave
        )
       ;; god               ; run Emacs commands without modifier keys
       ;; lispy             ; vim for lisp, for people who dont like vim
       multiple-cursors  ; editing in many places at once
       ;; objed             ; text object editing for the innocent
       ;; parinfer          ; turn lisp into python, sort of
       rotate-text       ; cycle region at point between text candidates
       snippets          ; my elves. They type so I don't have to
       ;; word-wrap         ; soft wrapping with language-aware indent

       :emacs
       (dired            ; making dired pretty [functional]
        +ranger         ; bringing the goodness of ranger to dired
        +icons          ; colorful icons for dired-mode
        )
       electric          ; smarter, keyword-based electric-indent
       ibuffer           ; interactive buffer management
       vc                ; version-control and Emacs, sitting in a tree

       :term
       ;; eshell            ; a consistent, cross-platform shell (WIP)
       ;; shell             ; a terminal REPL for Emacs
       ;; term              ; terminals in Emacs
       ;; vterm             ; another terminals in Emacs

       :tools
       ;; ansible
       ;; debugger          ; FIXME stepping through code, to help you add bugs
       ;; direnv
       docker
       editorconfig      ; let someone else argue about tabs vs spaces
       ;; ein               ; tame Jupyter notebooks with emacs
       (eval +overlay)   ; run code, run (also, repls)
       (flycheck         ; tasing you for every semicolon you forget
        +childframe)
       flyspell          ; tasing you for misspelling mispelling
       gist              ; interacting with github gists
       (lookup           ; helps you navigate your code and documentation
        +docsets)        ; ...or in Dash docsets locally
       lsp
       macos             ; MacOS-specific commands
       magit             ; a git porcelain for Emacs
       make              ; run make tasks from Emacs
       ;; pass              ; password manager for nerds
       ;; pdf               ; pdf enhancements
       ;; prodigy           ; FIXME managing external services & code builders
       ;; rgb               ; creating color strings
       ;; terraform         ; infrastructure as code
       ;; tmux              ; an API for interacting with tmux
       ;; upload            ; map local to remote projects via ssh/ftp
       ;; wakatime

       :lang
       ;; agda              ; types of types of types of types...
       ;; assembly          ; assembly for fun or debugging
       (cc +lsp)         ; C/C++/Obj-C madness
       ;; clojure           ; java with a lisp
       ;; common-lisp       ; if you've seen one lisp, you've seen them all
       ;; coq               ; proofs-as-programs
       ;; crystal           ; ruby at the speed of c
       csharp            ; unity, .NET, and mono shenanigans
       data              ; config/data formats
       ;; elixir            ; erlang done right
       ;; elm               ; care for a cup of TEA?
       emacs-lisp        ; drown in parentheses
       ;; erlang            ; an elegant language for a more civilized age
       ;; ess               ; emacs speaks statistics
       ;; faust             ; dsp, but you get to keep your soul
       ;; fsharp            ; ML stands for Microsoft's Language
       ;; go                ; the hipster dialect
       ;; (haskell +intero) ; a language that's lazier than I am
       ;; hy                ; readability of scheme w/ speed of python
       ;; idris             ;
       ;; (java +meghanada) ; the poster child for carpal tunnel syndrome
       (javascript       ; all(hope(abandon(ye(who(enter(here))))))
        ;; FIXME company doesn't match text at point on pop-up
        +lsp
        )
       ;; julia             ; a better, faster MATLAB
       ;; kotlin            ; a better, slicker Java(Script)
       ;; latex             ; writing papers in Emacs has never been so fun
       ;; lean
       ;; ledger            ; an accounting system in Emacs
       lua               ; one-based indices? one-based indices
       markdown          ; writing docs for people to ignore
       ;; nim               ; python + lisp at the speed of c
       ;; nix               ; I hereby declare "nix geht mehr!"
       ;; ocaml             ; an objective camel
       (org              ; organize your plain life in plain text
        +dragndrop       ; drag & drop files/images into org buffers
        ;; +hugo            ; use Emacs for hugo blogging
        +ipython         ; ipython/jupyter support for babel
        +pandoc          ; export-with-pandoc support
        +present         ; using org-mode for presentations
        +journal
        )
       ;; perl              ; write code no one else can comprehend
       ;; php               ; perl's insecure younger brother
       ;; plantuml          ; diagrams for confusing people more
       ;; purescript        ; javascript, but functional
       (python           ; beautiful is better than ugly
        +pyenv
        +lsp
        )
       ;; qt                ; the 'cutest' gui framework ever
       ;; racket            ; a DSL for DSLs
       rest              ; Emacs as a REST client
       ruby              ; 1.step {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       ;; rust              ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       ;; scala             ; java, but good
       ;; scheme            ; a fully conniving family of lisps
       sh                ; she sells {ba,z,fi}sh shells on the C xor
       ;; solidity          ; do you need a blockchain? No.
       ;; swift             ; who asked for emoji variables?
       ;; terra             ; Earth and Moon in alignment for performance.
       web               ; the tubes

       :email
       ;; (mu4e +gmail)       ; WIP
       ;; notmuch             ; WIP
       ;; (wanderlust +gmail) ; WIP

       ;; Applications are complex and opinionated modules that transform Emacs
       ;; toward a specific purpose. They may have additional dependencies and
       ;; should be loaded late.
       :app
       ;; calendar
       ;; irc               ; how neckbeards socialize
       ;; (rss +org)        ; emacs as an RSS reader
       ;; twitter           ; twitter client https://twitter.com/vnought
       ;; (write            ; emacs for writers (fiction, notes, papers, etc.)
       ;;  +wordnut         ; wordnet (wn) search
       ;;  +langtool)       ; a proofreader (grammar/style check) for Emacs

       :config
       ;; For literate config users. This will tangle+compile a config.org
       ;; literate config in your `doom-private-dir' whenever it changes.
       ;; literate

       ;; The default module sets reasonable defaults for Emacs. It also
       ;; provides a Spacemacs-inspired keybinding scheme and a smartparens
       ;; config. Use it as a reference for your own modules.
       ;; language             ; google translate
       (default +bindings +smartparens))
