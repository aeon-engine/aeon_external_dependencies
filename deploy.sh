#!/bin/bash

packnamever=${package_name%%.*}
packname=${packnamever%%_*}
packplatform=${packnamever#*_}

packpath=$(ls)
packpath2=${packpath/.zip/}
packpath3=${packpath2/.tar.gz/}
packversion=${packpath3##*_}

echo Package:  ${packname}
echo Platform: ${packplatform}
echo Version:  ${packversion}

echo ${packname} ${packplatform} ${packversion} > version.txt

curl -T ${packpath} -urobindegen:${bintray_api_key} -H "X-Bintray-Package:${packname}" -H "X-Bintray-Version:${packversion}" https://api.bintray.com/content/aeon-engine/aeon_dependencies/${packname}/${packplatform}/${packpath}
