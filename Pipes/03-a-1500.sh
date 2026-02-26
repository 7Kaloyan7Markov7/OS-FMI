#!/binb.bash
wc -c -m -l /etc/passwd | tr -d '/etc/passwd'
