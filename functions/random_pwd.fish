function random_pwd
    for i in (seq 5)
        cat /dev/urandom | env LC_CTYPE=C tr -dc 'a-zA-Z0-9' | fold -w 18 | head -n 1 | tr -d '\n' | fold -w 3 | tr '\n' '-'
        echo ''
    end
end
