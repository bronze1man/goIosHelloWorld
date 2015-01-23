brew install node
npm install -g ios-deploy
mkdir goios
cd goios
git init
git fetch https://go.googlesource.com/go refs/changes/27/2127/7 && git checkout FETCH_HEAD
cd src
GOARM=7 CGO_ENABLED=1 GOARCH=arm CC_FOR_TARGET=`pwd`/../misc/ios/clangwrap.sh \
        CXX_FOR_TARGET=`pwd`/../misc/ios/clangwrap.sh ./make.bash
