echo "extra line after mod" >> src/extra.txt
docker build -t tip10-after-mod -f dockerfile-after .