# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bashrc

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Shell Options
#
# See man bash for more options...
#
# Get immediate background command exit status.
set -o notify
#
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell

# Completion options
#
# Define to avoid stripping description in --option=description of './configure --help'
COMP_CONFIGURE_HINTS=1
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
[[ -f /etc/bash_completion ]] && . /etc/bash_completion

# History Options
#
# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
# Tune the history size for in memory and file.
export HISTSIZE=5000
export HISTFILESIZE=20000
#
# Whenever displaying the prompt, write the previous line to disk
export PROMPT_COMMAND="history -a"
# Make bash append rather than overwrite the history on disk
shopt -s histappend
# multi-line commands in history
shopt -q -s cmdhist

# Aliases
#
# Some people use a different file for aliases
if [ -f "${HOME}/.bash_aliases" ]; then
   source "${HOME}/.bash_aliases"
fi

# Functions
#
# Some people use a different file for functions
if [ -f "${HOME}/.bash_functions" ]; then
   source "${HOME}/.bash_functions"
fi

# Methods
#
# Some useful functions
if [ -f "${HOME}/.bash_methods" ]; then
   source "${HOME}/.bash_methods"
fi

# PATH, pathmunge 'path' [after], default behavior is unshift(prepend)

for new_path in ~/bin
do
   pathadd $new_path 
done 
