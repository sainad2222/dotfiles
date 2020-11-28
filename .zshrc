# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/sainath/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
# DISABLE_UPDATE_PROMPT="true"

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
plugins=(zsh-autosuggestions git extract)
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# CUSTOM ALIASES
alias python='python3'
alias pip='pip3'
alias codetest='code ~/edu/cp/test.py ~/edu/cp/test.txt;exit'
alias codetest2='code ~/edu/cp/test2.py;exit'
alias type-python='mlt sample python'
alias type-cpp='mlt sample cpp'
alias clearls='clear&&ls'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias zshrc='vim ~/.zshrc'
alias source-bash='source ~/.bashrc'
alias source-zsh='source ~/.zshrc'
alias source-vim='source ~/.vimrc'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias open='xdg-open'

cpp-run() {
    echo "Compiling file..."
    g++ -std=c++17 -o "$1" "$1.cpp"
    echo "Compiled! Enter input :D"
    ./"$1"
}
c-run() {
    echo "Compiling file..."
    gcc -o "$1" "$1.c"
    echo "Compiled! Enter input :D"
    ./"$1"
}
testplag(){
    cp ~/edu/cp/test.py ~/edu/cp/jplag/ex1.py
    cp ~/edu/cp/test2.py ~/edu/cp/jplag/ex2.py
    java -jar ~/edu/cp/jplag/jplag-2.12.1-SNAPSHOT-jar-with-dependencies.jar -l python3 -c ~/edu/cp/jplag/ex1.py ~/edu/cp/jplag/ex2.py
    xdg-open result/index.html
}
sync-dotfiles(){
	cp ~/.bashrc ~/edu/dotfiles/.bashrc
    cp ~/.zshrc ~/edu/dotfiles/.zshrc
	cp ~/.vimrc ~/edu/dotfiles/.vimrc
	cp ~/.config/Code/User/snippets/testCasesPy.code-snippets ~/edu/dotfiles/testCasesPy.code-snippets
    cp ~/.config/geany/snippets.conf ~/edu/dotfiles/snippets.conf
	cd ~/edu/dotfiles
    echo -------------------------BEFORE-----------------------------------
	git status
	git add .
    echo --------------------AFTER-----------------------------------------
    git status
    echo "Enter commit message: "
    read "commitmsg"
	git commit -m "${commitmsg}"
	git push -u origin master
}
mkdircd(){
        mkdir $1
        cd $1
}
stresstest(){
        python gen.py > test2.txt
        python test.py < test2.txt > out1.txt
        python test2.py < test2.txt > out2.txt
        diff out1.txt out2.txt
}
