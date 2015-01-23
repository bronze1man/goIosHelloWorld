CGO_ENABLED=1 GOARCH=arm ./goios/bin/go build -o hello.app/hello hello.app/main.go
codesign -f -s "iPhone Developer" --entitlements hello.app/Entitlements.plist hello.app/hello
ios-deploy --uninstall --debug --bundle hello.app
