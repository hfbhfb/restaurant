SERVER1=gz1
all:build
	scp -r dist/* $(SERVER1):/home/usera/nginxdir/var/restaurant_type_out
	@echo "all"

build:
	yarn run build
	mkdir dist/api/ 
	cp -Rf apijsondata/* dist/api/

