#!/bin/sh
projectPath="../of_v0.10.1_vs2017_release/apps/GraphicsBasedGL/"
shaderFilePath="/bin/data/shader.vert"
projectName=$1
 
path=$projectPath
path+=$projectName
path+=$shaderFilePath
echo $path

if [ -e $path ]; then
    echo "already exist"
else
    while read line
    do
        nl='\n'
        fragmentShader=$line
        echo $fragmentShader >> $path
    done < Shaders/shader.vert
fi

shaderFilePath="/bin/data/shader.frag" 
path=$projectPath
path+=$projectName
path+=$shaderFilePath
echo $path

if [ -e $path ]; then
echo "already exist"
else
    while read line
    do
        nl='\n'
        fragmentShader=$line
        echo $fragmentShader >> $path
    done < Shaders/shader.frag
fi

shaderDirectoryPath="/bin/data/"
path=$projectPath
path+=$projectName
path+=$shaderDirectoryPath
code $path
#atom $path
exit 0