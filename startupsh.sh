#! /bin/bash

my_email="Aleks.nie@yandex.com"
my_name="kumiko42"

if grep -q "my_email" ~/.bashrc; then
    : #pass
else
    sed -i "1i export my_email=${my_email} \nexport my_name=${my_name}" ~/.bashrc
fi

git pull https://github.com/kumiko42/__My_DS_Notebook
git config --global user.email "${my_email}"
git config --global user.name "${my_name}"
git status


