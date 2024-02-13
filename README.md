# HelpfulScripts
Code and scripts helpful for software development

# General System Aliases 🚀

Enhance your terminal experience with these handy aliases for common tasks.

## General Shortcuts ✨
- `alias c='clear'` - Clear the terminal screen 🧹
- `alias l='ls -la'` - List all files, including hidden ones, in long format 📄
- `alias lr='ls -ltr'` - List files sorted by modification time, in reverse 🔄
- `alias ..='cd ..'` - Go up one directory ⬆️
- `alias ...='cd ../../'` - Go back 2 directories ⬆️⬆️
- `alias ....='cd ../../../'` - Go back 3 directories ⬆️⬆️⬆️
- `alias rmrf='rm -rf'` - Remove directories and their contents safely 🗑️

## Git Aliases for Common Commands 🌿
- `alias gb='git branch'` - List local branches 🌱
- `alias gbr='git branch -r'` - List remote branches 📡
- `alias gs='git status'` - Show the working tree status 🌳
- `alias ga='git add'` - Add file contents to the index ➕
- `alias gc='git commit -m'` - Commit changes with a message 💬
- `alias gd='git diff'` - Show changes between commits, etc 📊
- `alias gp='git pull'` - Fetch from another repository or a local branch 🔁
- `alias gf='git fetch --all'` - Fetch changes from all remotes 🔄
- `alias gco='git checkout'` - Switch branches or restore files 🔄
- `alias gsw='git switch'` - Switch branches 🔀
- `alias gu='ga .; gc "updates"; git push'` - Add all, commit "updates", and push ⬆️
- `alias gcl='git clone'` - Clone a repository quickly 🐑
- `alias gm='git merge'` - Merge branches 🤝
- `alias gcb='git checkout -b'` - Create and switch to a new branch 🆕
- `alias gg='git log --graph ...'` - Show a graph of commits 📈
- `alias gca='git commit --amend'` - Amend the previous commit ✏️
- `alias gss='git stash push -m'` - Stash changes with a message 📦
- `alias gsa='git stash apply && git stash drop'` - Apply and drop the latest stash 💼
- `alias gsl='git stash list'` - List stashes 📝
- `alias gsc='git stash clear'` - Clear all stashes 🧹
- `alias gl='git log'` - Show commit logs 📚

## Git Workflow Aliases 🔄
- `alias gdb='...'` - Delete all branches except current 🚫🌿
- `alias gpmaster='...'` - Reset local master to match origin 🔄
- `alias gpmain='...'` - Reset local main to match origin 🔄

## Development Environment Aliases 🛠️
- `alias so='...'` - Copy and re-source zshrc 🔄
- `alias prof='...'` - Open zshrc in VS Code for editing 📝
- `alias venv='source venv/bin/activate'` - Activate Python virtual environment 🐍
- `alias de='deactivate'` - Deactivate Python virtual environment 🐍⬇️
- `alias python='python3'` - Default Python to Python 3 🐍3️⃣
- `alias pip='pip3'` - Default pip to pip3 🛠️

## Utility Aliases 🔧
- `alias tf='tail -f'` - Follow the growth of a log file 📈
- `alias dontsleep='...'` - Prevent the system from sleeping 😴❌
- `alias enablesleep='...'` - Re-enable system sleeping 😴✅

## Encrypted Directory Management 🔐
- `alias dec='...'` - Mount the encrypted directory 🏗️
- `alias enc='...'` - Unmount the encrypted directory 🏗️⬇️
- `trap 'enc' EXIT` - Ensure encrypted directory is unmounted on exit 🚪🔐

## Docker Utility Aliases 🐳
- `alias dockillall='...'` - Kill all running containers 🛑
- `alias dockerclean='...'` - Clean up Docker resources 🧼

## System Performance and Networking 💻
- `alias du='df -h'` - Display disk usage 📊
- `alias top='htop'` - Monitor system performance 📈
- `alias ports='...'` - Show open network ports 🔌

## Git Global Configuration and Extras 🌐
- `git config --global alias.uncommit 'reset HEAD^'` - Uncommit the last commit ↩️
- `export PATH="...VS Code..."` - Add VS Code to PATH 🛣️
- `alias gll='...'` - Git log in a compact format 📜
- `export GREP_COLORS='...'` - Customize grep colors 🎨
- `alias grep='grep --color=always'` - Always show colored grep output 🌈
- `alias gotestall='...'` - Run Go tests in all directories 🏃

Make your terminal experience more efficient and fun with these aliases! 😊
