#! /bin/bash
project_name=$1

echo Creating $project_name

new_project() {
    mkdir $1
    touch $1/README.md
    mkdir $1/data
    mkdir $1/code
    mkdir $1/docs
    mkdir $1/figs
    mkdir $1/outputs

    touch $1/data/.gitkeep
    touch $1/docs/.gitkeep
    touch $1/figs/.gitkeep
    touch $1/outputs/.gitkeep

    cd $1
    git init
}

new_project $project_name

echo copying across .gitignore
cd ..
cp sample_gitignore $project_name/.gitignore
