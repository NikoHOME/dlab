FILE="../lanlab-web"
if [ -d "$FILE" ]; then
    rm -rf ${FILE}/static
    cp -rf static ${FILE}
    dub build
    cp -f dlab ${FILE}
    echo "Success"
else
    echo "Fail : Execute in ssh/dlab"
fi
