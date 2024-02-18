# General System Aliases
alias c='clear'                            # Clear the terminal screen
alias l='ls -la'                           # List all files in long format, including hidden files
alias lr='ls -ltr'                         # List all files sorted by modification time, reversed
alias ..='cd ..'                           # Go up one directory
alias ...='cd ../../'                      # Go back 2 directories
alias ....='cd ../../../'                  # Go back 3 directories
alias rmrf='rm -rf'                        # Remove a directory and its contents safely

# Git Aliases for Common Commands
alias gb='git branch'                      # List local branches
alias gbr='git branch -r'                  # List remote branches
alias gs='git status'                      # Show the working tree status
alias ga='git add'                         # Add file contents to the index
alias gc='git commit -m'                   # Commit changes with a message
alias gd='git diff'                        # Show changes between commits, commit and working tree, etc
alias gp='git pull'                        # Fetch from and integrate with another repository or a local branch
alias gf='git fetch --all'                 # Fetch changes from all remotes
alias gco='git checkout'                   # Switch branches or restore working tree files
alias gsw='git switch'                     # Switch branches
alias gu='ga .; gc "updates"; git push'    # Add all changes, commit with message "updates", and push
alias gcl='git clone'                      # Quickly clone a repository
alias gm='git merge'                       # Merge the current branch with a specified branch
alias gcb='git checkout -b'                # Create a new branch and switch to it
alias gg='git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)"' # Show a graph of commits in the terminal
alias gca='git commit --amend'             # Amend the previous commit
alias gss='git stash push -m'              # Stash changes with a custom message
alias gsa='git stash apply && git stash drop' # Apply the latest stashed changes and drop the stash
alias gsl='git stash list'                 # List stashes in a more readable format
alias gsc='git stash clear'                # Delete all stashed entries
alias gl='git log'

# Git Workflow Aliases
alias gdb='current_branch=$(git symbolic-ref --short HEAD); git branch | grep -v $current_branch | xargs git branch -D' # Delete all branches except current
alias gpmaster='git fetch origin && git reset --hard origin/master' # Reset local master to match origin
alias gpmain='git fetch origin && git reset --hard origin/main'     # Reset local main to match origin

# Development Environment Aliases
alias so='cp ~/HelpfulScripts/zshrc ~/.zshrc && source ~/.zshrc'  # Copy zshrc from /root/HelpfulScripts and re-source it
alias prof='code ~/HelpfulScripts/zshrc'  # Open /root/HelpfulScripts/zshrc in Visual Studio Code for editing
alias venv='source venv/bin/activate'      # Activate Python virtual environment
alias de='deactivate'                      # Deactivate Python virtual environment
alias python='python3'                     # Default Python to Python 3
alias pip='pip3'                           # Default pip to pip3

# Utility Aliases
alias tf='tail -f'                         # Follow the growth of a log file
alias dontsleep='sudo pmset -b sleep 0; sudo pmset -b disablesleep 1' # Prevent the system from sleeping
alias enablesleep='sudo pmset -b sleep 5; sudo pmset -b disablesleep 0' # Re-enable system sleeping

# Encrypted Directory Management (requires EncFS)
alias dec='encfs ~/encrypted ~/decrypted'  # Mount the encrypted directory
alias enc='fusermount -u ~/decrypted'      # Unmount the encrypted directory
trap 'enc' EXIT                            # Ensure encrypted directory is unmounted on exit

# Docker Utility Aliases
alias dockillall='docker kill $(docker ps -q)' # Kill all running containers
alias dockerclean='docker container prune -f; docker volume prune -f; docker image prune -a -f' # Remove all stopped containers

# System Performance and Networking
alias du='df -h'                           # Display disk usage for all mounted filesystems
alias top='htop'                           # Monitor live system performance (requires 'htop')
alias ports='sudo lsof -i -P | grep -i "listen"' # Show open network ports and associated processes

# Git Global Configuration
git config --global alias.uncommit 'reset HEAD^' # Uncommit

export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
alias gll='git log --oneline --decorate --graph'
alias venv='source venv/bin/activate'

export GREP_COLORS='ms=01;32:mc=01;32:sl=:cx=:fn=35:ln=32:bn=32:se=36'
alias grep='grep --color=always'

alias gotestall='find . -type d -exec bash -c '\''if [ -n "$(ls -A {}/*.go 2>/dev/null)" ]; then cd {} && go test -v 2>&1 | grep -v -e "current directory is contained in a module that is not one of the workspace modules listed in go.work" -e "go work use" -e "no test files"; fi'\'' \;'
export PATH="/usr/local/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/Users/root/go
export PATH=$GOPATH/bin:$PATH

# linux
# alias ncs='read -p "Filename: " file_to_send; read -p "IP: " receiver_ip; pv "$file_to_send" | nc $receiver_ip 12345'

alias ip="ipconfig getifaddr en0"
alias ipl="hostname -I | cut -d' ' -f1"
# linux nc command
# alias ncl="local_ip=\$(hostname -I | cut -d' ' -f1) && echo \"On the sender, type: nc $local_ip 12345 < file_to_send\" && nc -l 12345 | pv > received_file"

# mac
alias ncl="local_ip=\$(ipconfig getifaddr en0 || echo 'Error: Could not obtain local IP address.') && [ \"\$local_ip\" != 'Error: Could not obtain local IP address.' ] && echo \"On the sender, type: nc \$local_ip 12345 < file_to_send\" && nc -l 12345 | pv -L 1m > received_file"
ncs_function() {
    echo "Filename: "
    read file_to_send
    echo "Receiver IP: 192.168."
    read ip_suffix
    receiver_ip="192.168.$ip_suffix"
    echo "Port (default 12345): "
    read port
    port=${port:-12345}
    pv "$file_to_send" | nc $receiver_ip $port
}

alias ncs='ncs_function'

alias da='docker run -it --rm --log-driver none -v $(pwd):/test --name test alpine:latest sh -c "apk update && apk add git openssh-client p7zip && /bin/sh"'
alias zenc='function _zipencrypt(){ 7z a -t7z -p -mhe=on "archive_$(date +%Y-%m-%d_%H-%M-%S).7z" "$@"; }; _zipencrypt'
