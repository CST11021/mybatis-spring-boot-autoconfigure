#!/bin/sh

# 该脚本用于快速编译并install我们定制的脚手架工程
mvn -X clean
echo 'clean编译文件'

mvn -X archetype:create-from-project
echo 'archetype项目编译完成'

cd target/generated-sources/archetype/
mvn -X install
echo 'archetype打包完成'