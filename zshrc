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

# Git Workflow Aliases
alias gdb='current_branch=$(git symbolic-ref --short HEAD); git branch | grep -v $current_branch | xargs git branch -D' # Delete all branches except current
alias gpmaster='git fetch origin && git reset --hard origin/master' # Reset local master to match origin
alias gpmain='git fetch origin && git reset --hard origin/main'     # Reset local main to match origin

# Development Environment Aliases
alias so='source ~/.zshrc'                 # Reload the zsh configuration
alias prof='code ~/.zshrc'                 # Open the zsh configuration in Visual Studio Code
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
