# web-open from terminal

function wo(){
        protocol=https;

        if ([[ $2 -ne 0 || $2 -ne '' ]]); then
                protocol=http;
        fi

        open_command $protocol://$1;
}

function lo(){
        protocol=http;

        if ([[ $3 -eq 1 ]]); then
                protocol=https;
        fi

        open_command $protocol://localhost:$1/$2;
}
