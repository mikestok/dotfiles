if status is-interactive
    set -g fish_autosuggestion_enabled 0
    set fish_greeting '' # turn off the greeting

    set -x APPLE_SSH_ADD_BEHAVIOUR macos
end

if test -d /usr/local/sbin
    fish_add_path /usr/local/sbin
end

if test -d $HOME/local/bin
    fish_add_path $HOME/local/bin
end

set -x EDITOR vim

set -x ERL_AFLAGS "-kernel shell_history enabled"
set -x KERL_BUILD_DOCS true
set -x KERL_CONFIGURE_OPTIONS --without-javac

source (brew --prefix asdf)/libexec/asdf.fish
