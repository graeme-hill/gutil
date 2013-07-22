find . -path *.vim -exec dos2unix {} \;
git submodule update --init
mkdir vim/.vimswap
mkdir vim/.vimbackup
