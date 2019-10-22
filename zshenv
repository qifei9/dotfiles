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
# vdpau
#

export VDPAU_DRIVER=nvidia

#
# VA-API
#

export LIBVA_DRIVER_NAME=vdpau
