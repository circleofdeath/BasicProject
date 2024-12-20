git ls-files --ignored --exclude-standard --directory --others | grep -v "^\.git/" | xargs rm -rf
