#
# History
#

#历史纪录条目数量
export HISTSIZE=1000000
#注销后保存的历史纪录条目数量
export SAVEHIST=1000000

#
# Editors
#

export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='zless'

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-g -i -M -R -S -w -z-4'

#
# perl local::lib
#

eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"

#
# vdpau
#

export VDPAU_DRIVER=nvidia

#
# VA-API
#

export LIBVA_DRIVER_NAME=vdpau

#
# bioperl
#

export PERL5LIB="$HOME/perl5/bioperl-live/lib:$HOME/perl5/bioperl-run/lib:$PERL5LIB"

#
# Firefox Hardware video acceleration
#
export MOZ_X11_EGL=1

#
# Path
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
