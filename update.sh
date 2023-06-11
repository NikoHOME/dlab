FILE="../lanlab-web"
if [ -d "$FILE" ]; then
    rm -rf ${FILE}/*
    cp -rf * ${FILE}
    systemctl --user restart lanlab-web.service
    echo "Success"
else
    echo "Fail : Execute in ssh/dlab"
fi
