set -e -x
MNAME=`uname -m`
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
export GOPATH=`pwd`/go
export VER=`cat ./VERSION`
export EXP=iotechsys
export SHA=`git rev-parse HEAD`

if [ ! -d $GOPATH ]
then
  mkdir $GOPATH
fi

case $MNAME in
  aarch64)
    ARCH=arm64
    ;;
  armv7l)
    ARCH=arm
    ;;
  i686)
    ARCH=x86
    ;;
  *)
    ARCH=$MNAME
    ;;
esac
export ARCH
