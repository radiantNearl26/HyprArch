#     ______ __ __ ____ __  ___ ____ _  __ _____
#    /_  __// // // __//  |/  //  _// |/ // ___/
#     / /  / _  // _/ / /|_/ /_/ / /    // (_ / 
#    /_/  /_//_//___//_/  /_//___//_/|_/ \___/  
# NOTE: Theming is handled by pywal. Ensure it is installed.

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Theme setup using pywall
alias ls='ls --color=auto'
alias grep='grep --color=auto'


# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
# cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
