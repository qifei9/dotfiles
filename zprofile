#
# Paths
#

# Normally, the path should be set in ~/.zshenv,
# but Arch Linux sources /etc/profile after sourcing ~/.zshenv.
# To prevent your $PATH being overwritten, set it in ~/.zprofile.

# Set the list of directories that Zsh searches for programs.
path=(
    $HOME/.local/bin
    $HOME/.local/share/gem/ruby/3.0.0/bin
    /usr/local/{bin,sbin}
    $path
    $HOME/perl5/bin
    /usr/bin/vendor_perl
)

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path
