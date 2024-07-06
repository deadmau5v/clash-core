#!/bin/bash

# make

make

rm -f /usr/bin/clash

ln -s $(pwd)/bin/clash-linux-amd64 /usr/bin/clash

cat << 'EOF' > bin/startproxy
#!/bin/bash
# 启动 Clash 代理
clash &
echo $! > /tmp/clash.pid
echo "Clash 代理已启动"
EOF

cat << 'EOF' > bin/stopproxy
#!/bin/bash
# 停止 Clash 代理
if [ -f /tmp/clash.pid ]; then
  kill $(cat /tmp/clash.pid)
  rm /tmp/clash.pid
  echo "Clash 代理已停止"
else
  echo "Clash 代理未运行"
fi
EOF

chmod +x bin/startproxy bin/stopproxy

ln -s $(pwd)/bin/startproxy /usr/bin/startproxy
ln -s $(pwd)/bin/stopproxy /usr/bin/stopproxy
