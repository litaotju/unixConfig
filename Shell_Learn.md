1 find.
    find path [expression]
    expression can be
        -name regx
        -type [l|d|f]
        -perm permission
        -mtime [-|+][1-9]+
        -user own_user_name
        -size size
2. xargs
    example: find . -name "*.py" | xargs ls -l
            find all the .py files in this dir and the subdirs then list all the infos.
