#!/bin/sh

FILE=$1

APPID=`basename $FILE .json`

# Only use this on master branch
NIGHTLY_ARGS=--rebuild-on-sdk-change

echo ========== Building $APPID ================
flatpak-builder --force-clean --ccache --require-changes --repo=repo --subject="Nightly build of ${APPID}, `date`" ${NIGHTLY_ARGS-} ${EXPORT_ARGS-} app $FILE
