# Load the default Guix profile
GUIX_PROFILE="$HOME/.guix-profile"
. "$GUIX_PROFILE"/etc/profile

# Many build scripts expect CC to contain the compiler command
export CC="gcc"

# Just use Emacs
export VISUAL=emacsclient
export EDITOR="$VISUAL"

# Load .bashrc to get login environment
[ -f ~/.bashrc ] && . ~/.bashrc
