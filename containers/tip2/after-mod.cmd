echo "extra line before mod" >> extra.txt
docker build -t tip2-after-mod -f dockerfile-after .