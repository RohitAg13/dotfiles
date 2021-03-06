# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
export ZSH="/Users/rohit/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_MAGIC_FUNCTIONS=true

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(tmux
	vscode
	git
	zsh-autosuggestions
       	zsh-syntax-highlighting
       	python
       	pip
       	pipenv
	wakatime
)

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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/rohit/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/rohit/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/rohit/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/rohit/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Example aliases
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias tmp="cd /Users/rohit/Documents/tmp"
alias doc="cd /Users/rohit/Documents"
alias cls="clear"
alias epic="cd /Users/rohit/Documents/epic/aml_github/"
alias sl="ls"
alias app="cd /Users/rohit/Documents/epic/app_github/app/"
alias aml="cd /Users/rohit/Documents/epic/aml_github/aml/"
alias backup="cd /Users/rohit/Documents/tmp/BACKUP"
alias config='/usr/bin/git --git-dir=/Users/rohit/.cfg/ --work-tree=/Users/rohit'
alias vi="nvim"
# alias mysql=/usr/local/mysql/bin/mysql
# alias mysqladmin=/usr/local/mysql/bin/mysqladmin# Vim Locale Error
export LC_ALL=en_US.UTF-8
# Tmux path for conda
export PATH="/Users/rohit/anaconda3/bin:$PATH"
# eval $(thefuck --alias)
# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
# Gem home
export GEM_HOME="/Users/rohit/.gem"
export PATH="$GEM_HOME/bin:$PATH"
# Add java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

## Vim binding
#bindkey -v

## Lua love alias
alias love="/Applications/love.app/Contents/MacOS/love"

# startup command
#random number between 0 to 10, if 1 then print
if [ 3 -gt $(python -S -c "import random; print(random.randrange(0,10))") ]; then
    fortune | cowsay -f tux | lolcat -a -d 1
fi

# Poetry
#export PATH=$PATH:$HOME/.poetry/bin

# Starship shell prompt
eval "$(starship init zsh)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/rohit/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/rohit/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rohit/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/rohit/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# Kubectl Autocomplete
if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi
