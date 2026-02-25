find ~/ -mindepth 1 -maxdepth 1 -newer practice/01/f3 -exec rm -i {} \;
#{} is a placeholder for each found file
