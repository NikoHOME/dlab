FILE="../lanlab-web"
if [ -d "$FILE" ]; then
    rm -rf ${FILE}/static
    cp -rf static ${FILE}
    cp -f dlab ${FILE}
    systemctl --user restart lanlab-web.service
    echo "Success"
else
    echo "Fail : Execute in ssh/dlab"
fi
