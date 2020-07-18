export HISTFILE=~/.rhistory #путь сохранения истории (работает))
export HISTSIZE=1000 #количество сохраняемых команд) 1
export HISTFILESIZE=1000 #количество сохраняемых команд) 2
export HISTTIMEFORMAT='%F %T ' #дата и время истории (работает)
#сохранение истории команд по мере ввода, заместо обычного сэйва после закрытия терминала
shopt -s histappend
export PROMPT_COMMAND='history -a;'$PROMPT_COMMAND
shopt -s cmdhist

#переменные

#алиасы для работы с телефоном (работает)
alias m='mutt'          #мутт =.=
alias x='exit'          #выход
alias d="screen -d"     #отключить скрин
alias hhh="history"     #история на 500 сообщений
alias hh="history 20"   #история на 20 сообщений
alias h="history 10"    #история на 10 сообщений
alias s="screen -x"    #включаем скрин
alias sx="screen -d"    #screen detach
alias ss='screen'       # создаем screen

#прочие алиасы (работает)
alias ..='cd ..' #вернуться на уровень выше
alias psr='ps aux | grep koss' #просмотр запущенных процессов
alias kk='kill -9' #убить процесс
alias baal='vim ~koss/.bash_aliases' #редактирование файла с алиасами
alias kmp='killall -u koss' #убить всё
alias wlog='w koss' #показывает где ты залогинен

alias clr='clear'
alias term='xfce4-terminal'
alias update-system='yaourt -Syua'
alias please='sudo'
alias free='free -h'

