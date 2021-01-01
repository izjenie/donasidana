cp -R laravel dd_project
cp -R just-giving-ldd/assets dd_project/public
cp just-giving-ldd/.htaccess dd_project/public
cp just-giving-ldd/favicon.ico dd_project/public
cp just-giving-ldd/index.php dd_project/public
cp just-giving-ldd/README.md dd_project/public
cp just-giving-ldd/robots.txt dd_project/public
cp just-giving-ldd/web.config dd_project/public
cp -R just-giving-ldd/project dd_project/
cp .env dd_project/
cd dd_project/public
ln -s ../project project
cd ../../

# build docker
docker build -t izjenie/donasidana-org:latest -f docker/donasidana.org.dockerfile .
# push docker
docker push izjenie/donasidana-org:latest
#ln -s dd_project/project dd_project/public/project
#ln -s dd_project/project dd_project/public/project
#cp -r laravel/public just-giving-ldd/project/
#rm -rf justgiving_project
#rm -rf justgiving_project.zip
#mv just-giving-ldd/project justgiving_project
##zip -r justgiving_project.zip justgiving_project/
#cp .env justgiving_project/
#mv justgiving_project/resources/assets justgiving_project/public/