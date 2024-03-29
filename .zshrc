# CUSTOM ALIASES
# utility shortcuts
alias python='python3'
alias pip='pip3'
alias clearls='clear&&ls'
alias lsa='ls -lah'
alias nvimrc='nvim ~/.config/nvim/init.vim'
alias source-bash='source ~/.bashrc'
alias source-zsh='source ~/.zshrc'
alias vimrc='nvim ~/.vimrc'
alias bashrc='nvim ~/.bashrc'
alias zshrc='nvim ~/.zshrc'
alias nvimrc='cd ~/.config/nvim && nvim -p plugins.vim generals.vim plug_configs.vim mappings.vim coc_configs.vim coc-settings.json'
alias source-zsh='source ~/.zshrc'
alias source-bash='source ~/.bashrc'
alias open='xdg-open'
alias install='sudo dpkg -i'
alias r='ranger'
alias qtilelogs='nvim ~/.local/share/qtile/qtile.log'

# CP shortcuts
alias nvimtest='cd ~/edu/cp && nvim -p test.py test'
alias nvimtest2='cd ~/edu/cp && nvim -p test2.py test2'
alias nvimpy='cd ~/edu/cp && nvim -p test.py test'
alias nvimpy2='cd ~/edu/cp && nvim -p test2.py test2'
alias nvimcpp='cd ~/edu/cp && nvim -p test.cpp test3'
alias nvimcpp2='cd ~/edu/cp && nvim -p test2.cpp test4'
alias nvimjava='cd ~/edu/cp && nvim -p Main.java test5'
alias nvimc='cd ~/edu/cp && nvim test.c'
alias nvimrust='cd ~/edu/rustlearn/hello && nvim src/main.rs'
alias nvimgo='cd ~/edu/golearn/test && nvim main.go'

# MISC
alias type-python='mlt sample python'
alias type-cpp='mlt sample cpp'
alias fd=fdfind
alias dotfiles='cd ~/dotfiles && git'
alias packages="cd ~/packages&&aptitude search '~i!~M'>packages.txt&&flatpak list --app>flatpak_packages.txt"
alias rm='rm -i'
alias mv='mv -i'
alias tmux='tmux -u'
alias qtiledebug='tail -f /home/$USER/.local/share/qtile/qtile.log'
alias curlpost='curl -X POST -H "Content-Type: application/json" '
alias makemigrations='python manage.py makemigrations'
alias runserver='python manage.py runserver'
alias migrate='python manage.py migrate'

# Custom functions(Mostly for CP)

rust(){
    rustc $1 -o testtt && ./testtt && rm -f testtt
}

cfparse(){
    cd ~
    cf parse $1
    contest=$(echo $1 | tr -dc '0-9')
    cd ~/cf/contest/$contest
}

cpp-run() {
    echo "Compiling file..."
    g++ -std=c++17 -o "$1tt" "$1.cpp"
    echo "Compiled! Enter input :D"
    ./"$1tt"
}
c-run() {
    echo "Compiling file..."
    gcc -o "$1tt" "$1.c"
    echo "Compiled! Enter input :D"
    ./"$1tt"
}
testplag(){
    cp ~/edu/cp/test.py ~/edu/cp/jplag/ex1.py
    cp ~/edu/cp/test2.py ~/edu/cp/jplag/ex2.py
    java -jar ~/edu/cp/jplag/jplag-2.12.1-SNAPSHOT-jar-with-dependencies.jar -l python3 -c ~/edu/cp/jplag/ex1.py ~/edu/cp/jplag/ex2.py
    xdg-open result/index.html
}
testplagcpp(){
    cp ~/edu/cp/test.cpp ~/edu/cp/jplag/ex1.cpp
    cp ~/edu/cp/test2.cpp ~/edu/cp/jplag/ex2.cpp
    java -jar ~/edu/cp/jplag/jplag-2.12.1-SNAPSHOT-jar-with-dependencies.jar -l c/c++ -c ~/edu/cp/jplag/ex1.cpp ~/edu/cp/jplag/ex2.cpp
    xdg-open result/index.html
}
mkdircd(){
        mkdir $1
        cd $1
}
stresstest(){
        i=1
        while :
        do
                python gen.py $i > test2.txt
                python test.py < test2.txt > out1.txt
                python test2.py < test2.txt > out2.txt
                diff -Z out1.txt out2.txt > /dev/null || break
                echo "Passed: " $i
                i=$((i+1))
        done
        echo "WA on " $i
        cat test2.txt
        echo "Your answer: "
        cat out1.txt
        echo "Correct answer: "
        cat out2.txt
}
stresstestcpp(){
    cd ~/edu/cp
    g++ test.cpp -o testtt
    echo "Compilation Successfull"
    i=1
    while :
    do
        echo "Running: " $i
        python gen.py $i > test2.txt
        ./testtt < test2.txt > out1.txt
        python test.py < test2.txt > out2.txt
        diff -Z out1.txt out2.txt > /dev/null || break
        echo "Passed: " $i
        i=$((i+1))
    done
    echo "WA on " $i
    cat test2.txt
    echo "Your answer: "
    cat out1.txt
    echo "Correct answer: "
    cat out2.txt
}
server(){
    tmux new-session \; \
        send-keys C-l\; \
        send-keys 'cd ~/edu/XMeme2/backend && npm start' C-m \; \
        split-window -h \; \
        send-keys C-l\; \
        send-keys 'cd ~/edu/XMeme2/backend && nvim .' C-m \; \
}
client(){
    tmux new-session \; \
        send-keys C-l\; \
        send-keys 'cd ~/edu/XMeme2/frontend && npm start' C-m \; \
        split-window -h \; \
        send-keys C-l\; \
        send-keys 'cd ~/edu/XMeme2/frontend && nvim .' C-m \; \
}

 # func(just to search)

# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/tools/nvim:/usr/local/bin:$PATH
export PATH=$HOME/tools/telegram:/usr/local/bin:$PATH
export PATH=$HOME/tools/oh-my-git:/usr/local/bin:$PATH
export PATH=/usr/local/go/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/npm/bin"
export GOPATH=$HOME/golib
export PATH=$PATH:$GOPATH/bin
export VISUAL=nvim

# Path to your oh-my-zsh installation.
export ZSH="/home/sainath/.oh-my-zsh"

ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ADD_NEWLINE=false
# SPACESHIP_PROMPT_SEPARATE_LINE=false
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions git extract zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude node_modules'
# export FZF_DEFAULT_COMMAND='rg --files --hidden --no-ignore-vcs --glob "!{node_modules,.git}"'
# export FZF_DEFAULT_COMMAND='ag --hidden -g ""'
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"


# depreciated
# sync-nvim(){
    # cd ~/.config/nvim
    # echo -------------------------BEFORE-----------------------------------
	# git status
	# git add .
    # echo --------------------AFTER-----------------------------------------
    # git status
    # echo "Enter commit message: "
    # read "commitmsg"
	# git commit -m "${commitmsg}"
	# git push -u origin master
# }
# sync-dotfiles(){
    # cp ~/.zshrc ~/edu/dotfiles/.zshrc
	# cp ~/.config/Code/User/snippets/testCasesPy.code-snippets ~/edu/dotfiles/vscode.snippets
    # cp ~/.config/geany/snippets.conf ~/edu/dotfiles/geany.snippets
    # cp ~/.tmux.conf ~/edu/dotfiles/.tmux.conf
	# cd ~/edu/dotfiles
    # echo -------------------------BEFORE-----------------------------------
	# git status
	# git add .
    # echo --------------------AFTER-----------------------------------------
    # git status
    # echo "Enter commit message: "
    # read "commitmsg"
	# git commit -m "${commitmsg}"
	# git push -u origin master
# }

fpath+=${ZDOTDIR:-~}/.zsh_functions
