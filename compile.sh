#! /bin/bash

COMPILEPATH=$(pwd)

for FILE in */*/*/*.d2; do
    EXTENSIONLESS=$(echo "$FILE" | sed "s/.d2//g" || echo "sed binary missing or issue related to permissions")
    d2 "$FILE" "$COMPILEPATH/compiled/$EXTENSIONLESS.svg" || echo "Install d2 language before attempting to compile. https://github.com/terrastruct/d2"
done
