echo "Do you know this cmd:"
promotion=$(whatis `ls /bin/ | shuf -n 1`)
cowsay $promotion

fortune -n 1


