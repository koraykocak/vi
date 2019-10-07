
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/kocak/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"
# ZSH_THEME="powerlevel9k/powerlevel9k"

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

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
export PATH=$HOME/installed/:$HOME/installed/p4v-2018.3.1719707/bin/:$HOME/installed/gitkraken/:$HOME/installed/cquery/build/release/bin:$PATH

export QT5_LINUX64_PATH=/home/kocak/Qt/5.12.2/gcc_64

# Mainly for git results not to be paginated by less, when the results fit a single page
export LESS="-F -X $LESS"


QTNAVUI_PATH=/home/kocak/QtNavUi/qt-navui
YAML_PATH=Build/Linux-x86_64-tracy.yaml

alias aga="ag --skip-vcs-ignores"

alias nab="docker run --rm -it --network host -u `id -u`:`id -g` -e HOME=/tmp -v /home/kocak/ivy:/tmp -v $QTNAVUI_PATH:$QTNAVUI_PATH -w $QTNAVUI_PATH qt-navui-docker.navkit-pipeline.tt3.com/tomtom/build-x86_64:0.3.3 Build/build.py -f $YAML_PATH -m Debug NavApp"
alias nabr="docker run --rm -it --network host -u `id -u`:`id -g` -e HOME=/tmp -v /home/kocak/ivy:/tmp -v $QTNAVUI_PATH:$QTNAVUI_PATH -w $QTNAVUI_PATH qt-navui-docker.navkit-pipeline.tt3.com/tomtom/build-x86_64:0.3.3 Build/build.py -f $YAML_PATH -m Release NavApp"
alias nafb="docker run --rm -it --network host -u `id -u`:`id -g` -e HOME=/tmp -v /home/kocak/ivy:/tmp -v $QTNAVUI_PATH:$QTNAVUI_PATH -w $QTNAVUI_PATH qt-navui-docker.navkit-pipeline.tt3.com/tomtom/build-x86_64:0.3.3 Build/build.py -f $YAML_PATH -m Debug"
alias nat="docker run --rm -it --network host -u `id -u`:`id -g` -e HOME=/tmp -v /home/kocak/ivy:/tmp -v $QTNAVUI_PATH:$QTNAVUI_PATH -w $QTNAVUI_PATH qt-navui-docker.navkit-pipeline.tt3.com/tomtom/build-x86_64:0.3.3 Build/build.py -f $YAML_PATH -m Debug -s Test"
alias nai="docker run --rm -it --network host -u `id -u`:`id -g` -e HOME=/tmp -v /home/kocak/ivy:/tmp -v $QTNAVUI_PATH:$QTNAVUI_PATH -w $QTNAVUI_PATH qt-navui-docker.navkit-pipeline.tt3.com/tomtom/build-x86_64:0.3.3 Build/build.py -f $YAML_PATH -m Debug install install_symlinks"

alias na="cd /home/kocak/QtNavUi/qt-navui/Build/Output/run/x86_64-Linux-tracy/Debug/NavApp/; LD_LIBRARY_PATH=/home/kocak/Qt/5.12.2/gcc_64/lib /home/kocak/QtNavUi/qt-navui/Build/Output/run/x86_64-Linux-tracy/Debug/NavApp/NavApp; cd -"
# alias nb="docker run --rm -it --network host -u `id -u`:`id -g` -e HOME=/tmp -v /home/kocak/ivy:/tmp -v $QTNAVUI_PATH:$QTNAVUI_PATH -e DISPLAY="$DISPLAY"  -v /home/kocak/Maps/:/home/kocak/Maps/ -v /tmp/.X11-unix:/tmp/.X11-unix:rw --privileged -e QT_X11_NO_MITSHM=1  -w "$QTNAVUI_PATH/Build/Output/run/x86_64-Linux/Debug/NavApp" qt-navui-docker.navkit-pipeline.tt3.com/tomtom/build-x86_64:0.3.3 bash"
# alias nv="docker run --rm -it --network host -u `id -u`:`id -g` -e HOME=/tmp -v /home/kocak/ivy:/tmp -v $QTNAVUI_PATH:$QTNAVUI_PATH -e DISPLAY="$DISPLAY"  -v /home/kocak/Maps/:/home/kocak/Maps/ -v /tmp/.X11-unix:/tmp/.X11-unix:rw --privileged -e QT_X11_NO_MITSHM=1  -w "$QTNAVUI_PATH/Build/Output/run/x86_64-Linux/Debug/Tool" qt-navui-docker.navkit-pipeline.tt3.com/tomtom/build-x86_64:0.3.3 ./ApiKitVerificationTool"
# alias nm="docker run --rm -it --network host -u `id -u`:`id -g` -e HOME=/tmp -v /home/kocak/ivy:/tmp -v $QTNAVUI_PATH:$QTNAVUI_PATH -e DISPLAY="$DISPLAY"  -v /home/kocak/Maps/:/home/kocak/Maps/ -v /tmp/.X11-unix:/tmp/.X11-unix:rw --privileged -e QT_X11_NO_MITSHM=1  -w "$QTNAVUI_PATH/Build/Output/run/x86_64-Linux/Debug/NavApp" qt-navui-docker.navkit-pipeline.tt3.com/tomtom/build-x86_64:0.3.3 ./Widget.MiniMap"
# alias nk="docker run --rm -it --network host -u `id -u`:`id -g` -e HOME=/tmp -v /home/kocak/ivy:/tmp -v $QTNAVUI_PATH:$QTNAVUI_PATH -e DISPLAY="$DISPLAY"  -v /home/kocak/Maps/:/home/kocak/Maps/ -v /tmp/.X11-unix:/tmp/.X11-unix:rw --privileged -e QT_X11_NO_MITSHM=1  -w "$QTNAVUI_PATH/Build/Output/run/x86_64-Linux/Debug/NavApp" qt-navui-docker.navkit-pipeline.tt3.com/tomtom/build-x86_64:0.3.3 ./NavKitApp.NDS"
# alias nd="docker run --rm -it --network host -u `id -u`:`id -g` -e HOME=/tmp -v /home/kocak/ivy:/tmp -v $QTNAVUI_PATH:$QTNAVUI_PATH -e DISPLAY="$DISPLAY"  -v /home/kocak/Maps/:/home/kocak/Maps/ -v /tmp/.X11-unix:/tmp/.X11-unix:rw --privileged -e QT_X11_NO_MITSHM=1  -w "$QTNAVUI_PATH/Build/Output/run/x86_64-Linux/Debug/NavApp" qt-navui-docker.navkit-pipeline.tt3.com/tomtom/build-x86_64:0.3.3 gdbserver :2122 ./NavApp"

echo "
nc - cd to QtNavUi folder
nab - Build QtNavUi
nat - Build QtNavUi Tests
nai - Install QtNavUi

na - Start NavApp
nv - Start ApiVerificationTool
nm - Start Widget.MiniMap
nk - Start NavKitApp.NDS
nd - Start NavApp on gdbserver
nb - Start bash
"


# setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
# setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
# setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
# setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
# setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
