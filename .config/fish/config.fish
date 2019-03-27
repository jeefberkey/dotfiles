# Startup script

# Terminal colots
cat ~/.cache/wal/sequences

# rbenv
#status --is-interactive; and source (rbenv init -|psub)

# pyenv
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

#systemctl --user set-environment GDK_BACKEND=wayland
#systemctl --user set-environment CLUTTER_BACKEND=wayland
#systemctl --user set-environment QT_QPA_PLATFORM=wayland-egl
#systemctl --user set-environment _JAVA_AWT_WM_NONREPARENTING=1
#systemctl --user set-environment XDG_CURRENT_DESKTOP=Unity

gpg-connect-agent /bye
set -x SSH_AUTH_SOCK 'gpgconf --list-dirs agent-ssh-socket'



# content has to be in .config/fish/config.fish
# if it does not exist, create the file
setenv SSH_ENV $HOME/.ssh/environment

function start_agent
    echo "Initializing new SSH agent ..."
    ssh-agent -c | sed 's/^echo/#echo/' > $SSH_ENV
    echo "succeeded"
    chmod 600 $SSH_ENV
    . $SSH_ENV > /dev/null
    ssh-add
end

function test_identities
    ssh-add -l | grep "The agent has no identities" > /dev/null
    if [ $status -eq 0 ]
        ssh-add
        if [ $status -eq 2 ]
            start_agent
        end
    end
end

if [ -n "$SSH_AGENT_PID" ]
    ps -ef | grep $SSH_AGENT_PID | grep ssh-agent > /dev/null
    if [ $status -eq 0 ]
        test_identities
    end
else
    if [ -f $SSH_ENV ]
        . $SSH_ENV > /dev/null
    end
    ps -ef | grep $SSH_AGENT_PID | grep -v grep | grep ssh-agent > /dev/null
    if [ $status -eq 0 ]
        test_identities
    else
        start_agent
    end
end
