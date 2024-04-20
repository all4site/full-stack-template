#!/bin/bash

read -p "Component name: " name
read -p "Component folder name: " way
read -p "Component type (comp, page, block): " type
read -p "Component goat (admin, front): " goat

#Проверяем есть ли каталог с шаблонами
dir=$(find $(pwd) -name "templates")

if [[ ! $dir ]]; then
  echo 'Create templates in templates folder.'
  exit
fi


#Проверяем введно ли имя компонента
if [[ ! $name ]]; then
  echo 'Enter component name.'
  exit
fi

#Проверяем введен ли путь создания компонента елси да то добавляем его в переменную
if [[ ! $way ]]; then
  echo 'Enter component way.'
  exit
  else componentWay=components/"$goat/${way^}"
fi

#Проверяем введен ли тип компонента
if [[ ! $type ]]; then
  echo 'Enter component type.'
  exit
fi


#Проверяем какой тип шаблона нужно делать
if [[ $type = "comp" ]]; then

#Проверяем на существование директорию
if [[ -d $componentWay ]]; then
  echo "Directory $componentWay already exists."
  exit
fi

#Создаем директорию
mkdir -p "$componentWay"

#Копируем в директорию шаблоны с измененными именами
cp templates/components/TemplateName.jsx "$componentWay"/"${name^}".tsx
cp templates/components/index.tsx  "$componentWay"/index.tsx
cp templates/components/templatename.module.sass "$componentWay"/"$name".module.sass

#Заменяем имена в файлах на нужные

#Некоторые шаблоны заменяем имя без изменения
sed -i s/templatename/"$name"/g "$componentWay"/"$name".module.sass
sed -i s/templatename/"$name"/g "$componentWay"/"${name^}".tsx

#Некоторые шаблоны начинаем файл с большой буквы
sed -i s/TemplateName/"${name^}"/g "$componentWay"/index.tsx
sed -i s/TemplateName/"${name^}"/g "$componentWay"/"${name^}".tsx

echo "Your component created in: "$componentWay"/${name^}"
fi

if [ "$type" = "block" ]; then
    echo 'Variable block not implemented'
fi

if [ "$type" = "page" ]; then
    echo 'Variable page not implemented'
fi

#Это старый код пока оставил
#if [[ ! $3 ]]; then
#  mkdir -p $2/$1
#  cp templates/components/TemplateName.tsx $2/$1/$1.tsx
#  cp templates/components/index.tsx $2/$1/index.tsx
#  cp templates/components/templatename.module.sass $2/$1/${1,,}.module.sass
#
#  sed -i s/templatename/${1,,}/g $2/$1/${1,,}.module.sass
#  sed -i s/templatename/${1,,}/g $2/$1/$1.tsx
#  sed -i s/TemplateName/$1/g $2/$1/$1.tsx
#  sed -i s/TemplateName/$1/g $2/$1/index.tsx
#
#  echo 'Component created'
#  exit
#fi
#
#######Models component######
#
#if [[ $3 == 'models' ]]; then
#  mkdir -p $3
#  cp templates/$3/TemplateName.models.js $3/$1.models.js
#  sed -i s/TemplateNameSchema/$1Schema/g $3/$1.models.js
#  sed -i s/TemplateName/$1s/g $3/$1.models.js
#  echo 'Component created'
#  exit
#
#fi
#
#######PAGE component######
#if [[ $3 == 'pages' ]]; then
#  mkdir -p pages/$1
#  cp templates/components/TemplateName.tsx pages/$1/$1.tsx
#    cp templates/components/index.tsx pages/$1/index.tsx
#    cp templates/components/templatename.module.sass pages/$1/${1,,}.module.sass
#
#    sed -i s/templatename/${1,,}/g pages/$1/${1,,}.module.sass
#    sed -i s/templatename/${1,,}/g pages/$1/$1.tsx
#    sed -i s/TemplateName/$1/g pages/$1/$1.tsx
#    sed -i s/TemplateName/$1/g pages/$1/index.tsx
#  echo 'Component created'
#  exit
#fi
#######SVG component######
#
#if [[ $3 == 'svg' ]]; then
#  mkdir -p components/$2/$3
#  cp templates/svg/TemplateName.tsx components/$2/$3/$1.tsx
#
#  sed -i s/templatename/${1,,}/g components/$2/$3/$1.tsx
#  sed -i s/TemplateName/$1/g components/$2/$3/$1.tsx
#
#  echo 'Component created'
#  exit
#else
#  echo 'Error component name'
#  exit
#fi
