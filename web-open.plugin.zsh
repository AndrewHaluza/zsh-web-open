# web-open from terminal

function wo(){
        protocol=https;

        if ([[ $2 -ne 0 || $2 -ne '' ]]); then
                protocol=http;
        fi

        open_command $protocol://$1;
}

alias o-localhost='wo localhost 1';
