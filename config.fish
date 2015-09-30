set -gx GOROOT /usr/local/go
set -gx GOPATH ~/go

set -gx PATH $GOROOT/bin $PATH
set -gx PATH $GOPATH/bin $PATH

# Set the editor
set -U EDITOR vim

# Colors
set -gx TERM screen-256color
