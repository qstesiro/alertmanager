# 编译与调试
{
    # 编译
    alias gob='CGO_ENABLED=0 go build -v -gcflags "all=-N -l" -o alertmanager cmd/alertmanager/main.go'

    # 调试
    alias dlv='gob && dlv exec ./alertmanager --init .dbg/alertmanager.dlv -- --config.file=doc/examples/simple.yml'
}
