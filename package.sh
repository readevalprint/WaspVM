#!/bin/sh

if test z$1 = z; then
    echo "USAGE: package.sh <platform> <pkgdir>"
    echo "This should only be used by invoking \"make package\", and then"
    echo "only on Windows or other non-UNIX platforms."
fi

OS=`uname -s | sed -e 's:[_-].*$::'`

if test z$OS = zMINGW32; then
EXE=.exe
else
EXE=
fi

PLATFORM=$1
PKGDIR=$2
WASPVM=waspvm-$PLATFORM$EXE

rm -rf $PKGDIR
mkdir -pm 0755 $PKGDIR
cp -rf mod/* $PKGDIR
cp $WASPVM $PKGDIR
cd $PKGDIR

cat >site/config.ms <<EOF
;;; Generated by package.sh
(set-site-config! 'stub-path ".")
(set-site-config! 'bin-path ".")
(set-site-config! 'mod-path '("."))
EOF

../waspc$EXE -exe waspc$EXE   -stub $WASPVM bin/waspc
../waspc$EXE -exe wasp$EXE    -stub $WASPVM bin/wasp

## TODO: This is bogus..
if test z$EXE = z.exe; then
    ../waspc -exe waspdoc$EXE -stub $WASPVM bin/waspdoc
fi

