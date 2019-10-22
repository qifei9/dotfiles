#
# Paths
#

# Normally, the path should be set in ~/.zshenv,
# but Arch Linux sources /etc/profile after sourcing ~/.zshenv.
# To prevent your $PATH being overwritten, set it in ~/.zprofile.

# Set the list of directories that Zsh searches for programs.
path=(
    /usr/local/{bin,sbin}
    /usr/bin/vendor_perl
    $HOME/.local/bin
    $HOME/perl5/bin
    $path
)

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path
