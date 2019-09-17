echo "Очиситка кэша компилятора..."
go clean -cache -testcache -modcache

echo 'Компиляция linux-arm8 бинарника (без тора)...'
GOOS=linux GOARCH=arm go build -o ./builds/linux/Infinite-Bomber-ARM-without-tor/infinite-bomber -gcflags="all=-trimpath=$GOPATH" -asmflags="all=-trimpath=$GOPATH" -ldflags="-s -w" -tags withoutTor

echo 'Готово!'
