source $HOME/.zplug/init.zsh

# Make sure you use double quotes
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting"

# zplug "lib/theme-and-appearance", from:oh-my-zsh

# Node Plugins
zplug "lukechilds/zsh-nvm", as:plugin, use:"zsh/*.zsh"

# Support oh-my-zsh plugins and the like
zplug "plugins/git",   from:oh-my-zsh, if:"which git"
zplug "plugins/git-extras", from:oh-my-zsh, if:"which git"
zplug "plugins/tmuxinator", from:oh-my-zsh
zplug "plugins/gnu-utils", from:oh-my-zsh
zplug "plugins/web-search", from:oh-my-zsh
zplug "plugins/last-working-dir", from:oh-my-zsh

# For SSH, starting ssh-agent is annoying
zplug "plugins/ssh-agent", from:oh-my-zsh
zplug "rupa/z"
#zplug "b4b4r07/enhancd", use:init.sh
# Node Plugins
zplug "plugins/coffee", from:oh-my-zsh
zplug "mattberther/zsh-pyenv"
#zplug "plugins/node", from:oh-my-zsh
#zplug "plugins/npm", from:oh-my-zsh

# Elixir Plugins
zplug "plugins/mix", from:oh-my-zsh
zplug "plugins/mix-fast", from:oh-my-zsh

# Python Plugins
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/python", from:oh-my-zsh
zplug "plugins/virtualenv", from:oh-my-zsh

#specific for osx
zplug "plugins/brew", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
# zplug "plugins/brew-cask", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "plugins/gem", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "plugins/osx", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "plugins/sudo", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
#zplug "plugins/vagrant", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "plugins/atom", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"

#set a theme
#zplug "themes/agnoster", as:theme, from:oh-my-zsh
# zplug "lib/theme-and-appearance", from:oh-my-zsh
zplug "arialdomartini/oh-my-git", as:plugin, use:"*.sh"
zplug "arialdomartini/oh-my-git-themes", as:theme, use:"oppa-lana-style.zsh-theme"
#zplug "arialdomartini/oh-my-git"
#source $HOME/.zplug/repos/arialdomartini/oh-my-git/prompt.sh
#source $HOME/.zplug/repos/arialdomartini/oh-my-git-themes/oppa-lana-style.zsh-theme
#zplug "arialdomartini/oh-my-git-themes"
#zplug "arialdomartini/oh-my-git-themes", as:command of:oppa-lana-style.zsh-theme



# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
ZPLUG_USE_CACHE=true ZPLUG_LOG_LOAD_SUCCESS=false zplug load #--verbose
