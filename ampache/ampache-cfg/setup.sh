#!/bin/bash
BASE=/etc/confd/templates

cd /
mkdir -p /etc/confd/conf.d

i=0
for SRC in $(find $BASE -type f); do
    SRC=${SRC##$BASE}
    FILENAME=${i}-$(basename $SRC).toml
    cat > /etc/confd/conf.d/${FILENAME} << EOF
[template]
src = "${SRC}"
dest = "${SRC}"
keys = [
    "/",
]
EOF
    i=$((i+1))
done

exec "$@"
