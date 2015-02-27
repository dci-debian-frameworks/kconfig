#!/bin/sh
export LANG=C.UTF-8
export LC_ALL=C.UTF-8
export HOME=debian/tests.home
[ -e debian/tests.home ] || mkdir debian/tests.home
kdeinit5
HOME=debian/tests.home dh_auto_test
ret=$?
rm -rf debian/home/tests.home
exit $ret
