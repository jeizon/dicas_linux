# Modificar o arquivo ".bashrc" na raiz do usuário

# Modificar o nome/saida no prompt para "@USER: [últimos 3 itens do diretório atual"] $:
# Exemplo 1: @jeizon: [jeizon/android/dicas_linux] $:
# Exemplo 2: @jeizon: [packages/apps/Settings] $:
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]@\u:\[\033[01;33m\] [${PWD#${PWD%/*/*/*}/}] \[\033[00m\]\[\033[01;32m\]\$: \[\033[00m\]'
else
    PS1='${debian_chroot:+($debian_chroot)}@\u:[${PWD#${PWD%/*/*/*}/}]\$: '
fi

# Mostrar nome da aba no terminal com os ultimos 2 itens do diretório atua, exemplos:
# Aba 1 = [android/dicas_linux]
# Aba 2 = [apps/Settings]
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)} [\${PWD#\${PWD%/*/*}/}] \a\]$PS1"
    ;;
*)
    ;;
esac