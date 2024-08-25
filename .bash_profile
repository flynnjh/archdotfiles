#
# ~/.bash_profile
#

# Start X on login to tty1 if not started yet
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    exec startx
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
